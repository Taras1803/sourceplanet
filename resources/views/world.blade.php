@extends('welcome')
@section('content1')
    <p>Hello {{$name}}</p>
    <p class="t1">The current UNIX timestamp is {{ time() }}</p>
@endsection
<p>The current UNIX timestamp is {{ time() }}</p>

