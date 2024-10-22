<?php

namespace App\Http\Controllers;

//import model product
use App\Models\Employee;

//import return type View
use Illuminate\View\View;

//import return type RedirectResponse
use Illuminate\Http\RedirectResponse;

//import Http Request
use Illuminate\Http\Request;

//impoer Facades Storage
use Illuminate\Support\Facades\Storage;

use Illuminate\Validation\Rule;

class EmployeeController extends Controller
{
    /**
     * index
     * 
     * @return void
     */
    public function index(): View
    {
        //get all data
        $employees = Employee::latest()->paginate(10);

        //render view with employees
        return view('employees.index', compact('employees'));
    }

    /**
     * create
     * 
     * @return view
     */
    public function create(): View
    {
        return view('employees.create');
    }

    /**
     * store
     * 
     * @param mixed $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'name' => 'required|min:5',
            'gender' => 'required|string',
            'born' => 'required|date',
            'email' => 'required|string|email|max:255|unique:employees',
            'phone' => 'required|string|max:15',
            'address' => 'required|string|max:500',
            'position' => 'required|string|max:255',
            'status' => 'required|string|max:255',
        ]);

        //upload image
        $image = $request->file('image');
        $image->storeAs('/employees', $image->hashName());

        //new data
        Employee::create([
            'image' => $image->hashName(),
            'name' => $request->name,
            'gender' => $request->gender,
            'born' => $request->born,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'position' => $request->position,
            'status' => $request->status,
        ]);

        //redirect to index
        return redirect()->route('employees.index')->with(['success' => 'Employee created successfully']);
    }

    /**
     * show
     * 
     * @param mixed $id
     * @param View
     */
    public function show(string $id): View
    {
        //get employee
        $employee = Employee::findOrFail($id);

        //render view with Employee
        return view('employees.show', compact('employee'));
    }

    /**
     * edit
     * 
     * @param mixed $id
     * @return View
     */
    public function edit(string $id): View
    {
        //get employee
        $employee = Employee::findOrFail($id);

        //render view with employee
        return view('employees.edit', compact('employee'));
    }

    /**
     * update
     * 
     * @param mixed $request
     * @param mixed $id
     * @return RedirectResponse
     */
    public function update(Request $request, string $id): RedirectResponse
    {

        //get employee by ID
        $employee = Employee::findOrFail($id);

        //validate form
        $request->validate([
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'name' => 'required|min:5',
            'gender' => 'required|string',
            'born' => 'required|date',
            'email' => 'email|max:255',
            'phone' => 'required|string|max:15',
            'address' => 'required|string|max:500',
            'position' => 'required|string|max:255',
            'status' => 'required|string|max:255',
        ]);

        //check if image is upload
        if ($request->hasFile('image')) {
            //upload new image
            $image = $request->file('image');
            $image->storeAs('public/employees', $image->hashName());

            //delete old image
            Storage::delete('public/employees/' . $employee->image);

            //update employee with new image
            $employee->update([
                'image' => $image->hashName(),
                'name' => $request->name,
                'gender' => $request->gender,
                'born' => $request->born,
                'email' => $request->email,
                'phone' => $request->phone,
                'address' => $request->address,
                'position' => $request->position,
                'status' => $request->status,
            ]);
        } else {
            //update employee without image
            $employee->update([
                'name' => $request->name,
                'gender' => $request->gender,
                'born' => $request->born,
                'email' => $request->email,
                'phone' => $request->phone,
                'address' => $request->address,
                'position' => $request->position,
                'status' => $request->status,
            ]);
        }
        return redirect()->route('employees.index')->with(['success' => 'Employee updated successfully']);
    }

    /**
     * destroy
     * 
     * @param mixed $id
     * @return RedirectResponse
     */
    public function destroy($id): RedirectResponse
    {
        //get employee by ID
        $employee = Employee::findOrFail($id);
        //delete image
        Storage::delete('public/employees/'. $employee->image);

        //delete employee
        $employee->delete();

        //redirect to index
        return redirect()->route('employees.index')->with(['success' => 'Employee deleted successfully']);
    }
}
