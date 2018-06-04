@extends('layouts.header')
@section('main')
<div id="content">
    <div class="task">
        <h5>Choose your task:</h5>
        <div class="sort">
            <span>Sort By:</span>
            <select class="sort_item" name="sort_item">
                <option value="Newest">Newest</option>
                <option value="Oldes">Oldes</option>
                <option value="Easiest">Easiest</option>
                <option value="Hardest">Hardest</option>
                <option value="Recently published">Recently published</option>
            </select>
        </div>
        <div class="lang">
            <span>Language:</span>
            <select class="language" name="language">
                <option value="Languages">Languages</option>
                <option value="PHP">PHP</option>
                <option value="Javascript">Javascript</option>
                <option value="Python">Python</option>
            </select>
        </div>
        <div class="diffic">
            <span>Difficulty:</span>
            <select class="level" name="level">
                <option>Difficulties</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
            </select>
        </div>
        <hr>
        <div class="tags">
            <span>Tags:</span>
            <ul class="tags_items">
                <li class="tags_item"><a href="">Algorithms</a></li>
                <li class="tags_item"><a href="">Fundamentals</a></li>
                <li class="tags_item"><a href="">Arrays</a></li>
                <li class="tags_item"><a href="">Strings</a></li>
                <li class="tags_item"><a href="">Numbers</a></li>
                <li class="tags_item"><a href="">Logic</a></li>
                <li class="tags_item"><a href="">Algebra</a></li>
                <li class="tags_item"><a href="">Geometry</a></li>
                <li class="tags_item"><a href="">Mathematics</a></li>
                <li class="tags_item"><a href="">Loops</a></li>
            </ul>
        </div>
    </div>
</div>

<div id="sidebar">
    <h5>Task list</h5>
    <ul>
        <li>
            <div class="task_left">
                <span class="task_level">1</span>
                <a href="" class="task_name">Функция получает на вход массив чисел, должна вернуть сумму этих чисел. <br><span class="remark">*</span>Не использовать встроенные функции суммирования php.</a><br>
                <div class="task_tag"><a href="">Mathematics</a></div>
            </div>
            <div class="task_right">
                <img src="images/php-icon.jpg">
            </div>
        </li>
        <hr>
        <li>
            <div class="task_left">
                <span class="task_level">3</span>
                <a href="" class="task_name">Функция получает на вход длинную строку с множеством слов. Она должна вернуть ту же строку, но в словах, которые длиннее 6 символов, функция должна вместо всех символов после шестого поставить одну звездочку. Пример: Из слова 'verwijdering' должно получиться 'verwij*'.</a><br>
                <div class="task_tag"><a href="">Mathematics</a></div>
            </div>
            <div class="task_right">
                <img src="images/php-icon.jpg">
            </div>
        </li>
        <hr>
        <li>
            <div class="task_left">
                <span class="task_level">2</span>
                <a href="" class="task_name">Функция получает на вход массив строк. Вернуть надо количество строк, которые не короче двух символов и у которых первый и последний символ совпадают.</a><br>
                <div class="task_tag"><a href="">Mathematics</a></div>
            </div>
            <div class="task_right">
                <img src="images/php-icon.jpg">
            </div>
        </li>
        <hr>
        <li>
            <div class="task_left">
                <span class="task_level">1</span>
                <a href="" class="task_name">Функция получает на вход строку, должна вернуть ее перевернутой. <span class="remark">*</span>Не использовать встроенные функции суммирования php.</a><br>
                <div class="task_tag"><a href="">Mathematics</a></div>
            </div>
            <div class="task_right">
                <img src="images/php-icon.jpg">
            </div>
        </li>
        <hr>
    </ul>
</div>
    @endsection