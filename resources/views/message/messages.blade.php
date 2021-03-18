@if ($errors->any())
    <div class="alert alert-danger">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if (Session::has('success'))
    <div class="alert alert-success">
        <span> {{ Session::get('success') }} </span>
    </div>   
@endif

{{-- @if (Session::has('error'))
    <div class="alert alert-danger">
        <span> {{ Session::get('error') }} </span>
    </div>    
@endif --}}