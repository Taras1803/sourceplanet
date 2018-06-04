@extends('welcome')
@section('content')
    <form action="" method="post">
        <legend>task_test_code</legend>
                <textarea id="1" style="height: 350px; width: 50%;" name="test"></textarea>
        <br><br>
        <legend>description_task</legend>
                <textarea name="description"  id="2" cols="30" rows="10"></textarea>
        <br>
        <legend>preview_task</legend>
                 <textarea name="preview" id="3" cols="30" rows="10"></textarea>
            <br>
            <input type="submit"  value="Отправить" title="Отправить данные формы">
    </form>
@endsection