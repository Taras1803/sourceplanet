<?php
use App\Models\Post;
use App\Scopes\IdScope;
use App\User;
use Illuminate\Support\Str;
use App\Task;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello/{name}', 'HelloWorldController@helloWorld');
Route::get('test', 'TaskController@index');
Route::post('createtask','TaskController@create');
Route::get('/test/{id}',function ($id){
    $task=Task::find($id);
    return view('test',compact('task'));
});

Route::post('foo/{id}', function ($id) {
$post=$_POST['code'];
    if (isset($_POST['code'])) {
        $test = \App\Task::find($id)->test;
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
            $result = stream_get_contents($pipes[1],-1,25);
            echo "<p class='t1'>".$result."<p>";
            fclose($pipes[1]);
        }

    }
    $task=Task::find($id);
    return view('test', compact('post', 'task'));
});

Route::get('user/{id}', function ($id) {
    return 'User '.$id;
});

Route::get('posts/{post}/comments/{comment}', function ($postId, $commentId) {
 return 'user ' . $postId . ' is '. $commentId;
});

Route::get('test/{page}',function ($page){
    $post = Post::all()->forPage($page,5)->toArray();
    return view('test', compact('post'));
});

Route::get('/posts/', 'PostsController@index');

//Route::get('test',function (){
//    $user = new User();
//    $user->name = 'Taras';
//    $user->email = Str::random(10);
//    $user->password = Str::random(5);
//   $user->save();
//echo   $lastId = User::all()->last()->id;
//$post = new Post();
//$post->title = Str::random(5);
//$post->description = Str::random(5);
//$post->user_id = $lastId;
//    $post->save();
// // $users = DB::table('users')->select('*')->get()->toArray();
//  //dd($users);
//  //$users = User::all()->take(2)->toArray();
////dd($users1);
//  $users =DB::table('posts')->join('users', 'users.id', '=','posts.user_id')->get();
//    dd(User::find(1)->post()->get());
//    return view('test', compact('users'));
//
//});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/tasks', function (){
   // $tasks = DB::table('test')->get();
    $tasks = Task::all();

    return view ('tasks.index', compact('tasks'));
});

Route::get('/tasks/{task}', function ($id){
    //$task = DB::table('test')->find($id);
    $task = Task::find($id);
    return view ('tasks.show', compact('task'));
});
//Route::middleware('api')->group(function () {
//    Route::apiResource('posts', 'PostsController');
//});
Route::resource('posts', 'PostsController');
