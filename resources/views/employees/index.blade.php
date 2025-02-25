<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employee List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background: lightgray">

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <h3 class="text-center my-4">Employee List</h3>
                    <hr>
                </div>
                <div class="card border-0 shadow-sm rounded">
                    <div class="card-body">
                        <a href="{{ route('employees.create') }}" class="btn btn-md btn-success mb-3">ADD EMPLOYEE</a>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">NAME</th>
                                    <th scope="col">GENDER</th>
                                    <th scope="col">PHONE</th>
                                    <th scope="col">POSITION</th>
                                    <th scope="col">STATUS</th>
                                    <th scope="col" style="width: 20%">ACTIONS</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($employees as $employee)
                                    <tr>
                                        <td>{{ $employee->name }}</td>
                                        <td>{{ ucfirst($employee->gender) }}</td>
                                        <td>{{ $employee->phone }}</td>
                                        <td>{{ $employee->position }}</td>
                                        <td>{{ ucfirst($employee->status) }}</td>
                                        <td class="text-center">
                                            <form onsubmit="return confirm('Are you sure?');"
                                                action="{{ route('employees.destroy', $employee->id) }}" method="POST">
                                                <a href="{{ route('employees.show', $employee->id) }}"
                                                    class="btn btn-sm btn-dark">SHOW</a>
                                                <a href="{{ route('employees.edit', $employee->id) }}"
                                                    class="btn btn-sm btn-primary">EDIT</a>
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-sm btn-danger">DELETE</button>
                                            </form>
                                        </td>
                                    </tr>
                                @empty
                                    <div class="alert alert-danger">
                                        No employees available.
                                    </div>
                                @endforelse
                            </tbody>
                        </table>
                        {{ $employees->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        //message with sweetalert
        @if (session('success'))
            Swal.fire({
                icon: "success",
                title: "SUCCESS",
                text: "{{ session('success') }}",
                showConfirmButton: false,
                timer: 2000
            });
        @elseif (session('error'))
            Swal.fire({
                icon: "error",
                title: "FAILED!",
                text: "{{ session('error') }}",
                showConfirmButton: false,
                timer: 2000
            });
        @endif
    </script>

</body>

</html>