<?php

use App\Scopes\IdScope;
use App\User;
use Illuminate\Support\Str;
use App\Task;

Route::get('/', function () {
    return view('welcome');
});

Route::get('test', 'TaskController@index');

Route::get('create',function (){
    $task=Task::find(1);
    return view('test1', compact('task'));
});

Route::post('createtask','TaskController@create');

Route::get('/test/{id}',function ($id){
    $task=Task::find($id);
    return view('test',compact('task'));
});

Route::post('foo/{id}', function ($id) {
$post=$_POST['code'];
    if (isset($_POST['code'])) {
        $test = Task::find($id)->test;
        $preCode = '';
        $preCode .= '<?php'."\n";
        $preCode .= $_POST['code'];
        $preCode .= $test;
        $hand = fopen("code.php", "w");
        fwrite($hand,$preCode);
        fclose($hand);
        $descriptorspec = array(
            0 => array("pipe", "r"),  // stdin - канал, из которого дочерний процесс будет читать
            1 => array("pipe", "w"),  // stdout - канал, в который дочерний процесс будет записывать
            2 => array("pipe", "w") // stderr - файл для записи
        );
        $process = proc_open("php", $descriptorspec, $pipes, null, null);
        if (is_resource($process)) {
            fwrite($pipes[0],$preCode);
            fclose($pipes[0]);
            $result = stream_get_contents($pipes[1]);
            echo "<p class='t1'>".$result."<p>";
            fclose($pipes[1]);
        }

    }
    $task=Task::find($id);
    return view('test', compact('post', 'task'));
});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


