<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background: lightgray">

    <div class="container mt-5 mb-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card border-0 shadow-sm rounded">
                    <div class="card-body">
                        <form action="{{ route('employees.update', $employee->id) }}" method="POST"
                            enctype="multipart/form-data">

                            @csrf
                            @method('PUT')

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">IMAGE</label>
                                <input type="file" class="form-control @error('image') is-invalid @enderror"
                                    name="image">
                                <small class="text-muted">Current Image: <img
                                        src="{{ asset('storage/employees/' . $employee->image) }}" class="rounded"
                                        style="width: 100px;"></small>

                                @error('image')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">NAME</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror"
                                    name="name" value="{{ old('name', $employee->name) }}"
                                    placeholder="Enter Employee Name" required>

                                @error('name')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">GENDER</label>
                                <select class="form-control @error('gender') is-invalid @enderror" name="gender"
                                    required>
                                    <option value="male" {{ $employee->gender == 'male' ? 'selected' : '' }}>Male
                                    </option>
                                    <option value="female" {{ $employee->gender == 'female' ? 'selected' : '' }}>Female
                                    </option>
                                </select>

                                @error('gender')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">DATE OF BIRTH</label>
                                <input type="date" class="form-control @error('born') is-invalid @enderror"
                                    name="born" value="{{ old('born', $employee->born) }}" required>

                                @error('born')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">EMAIL</label>
                                <input type="email" class="form-control @error('email') is-invalid @enderror"
                                    name="email" value="{{ old('email', $employee->email) }}"
                                    placeholder="Enter Employee Email" required>

                                @error('email')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">PHONE</label>
                                <input type="text" class="form-control @error('phone') is-invalid @enderror"
                                    name="phone" value="{{ old('phone', $employee->phone) }}"
                                    placeholder="Enter Employee Phone" required>

                                @error('phone')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">ADDRESS</label>
                                <textarea class="form-control @error('address') is-invalid @enderror" name="address" rows="4"
                                    placeholder="Enter Employee Address" required>{{ old('address', $employee->address) }}</textarea>

                                @error('address')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">POSITION</label>
                                <input type="text" class="form-control @error('position') is-invalid @enderror"
                                    name="position" value="{{ old('position', $employee->position) }}"
                                    placeholder="Enter Employee Position" required>

                                @error('position')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <div class="form-group mb-3">
                                <label class="font-weight-bold">STATUS</label>
                                <select class="form-control @error('status') is-invalid @enderror" name="status"
                                    required>
                                    <option value="active" {{ $employee->status == 'active' ? 'selected' : '' }}>Active
                                    </option>
                                    <option value="inactive" {{ $employee->status == 'inactive' ? 'selected' : '' }}>
                                        Inactive</option>
                                </select>

                                @error('status')
                                    <div class="alert alert-danger mt-2">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>

                            <button type="submit" class="btn btn-primary me-3">UPDATE</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
