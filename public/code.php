<?php
                            function compare_ends($shortMe) {
}
                    function test($received, $expected) {
    echo $expected === $received ? "<br>"."OK"
        : "<br>"."Fail";
}
function test_compare_ends() {
    echo "We are testing compare_ends!" . PHP_EOL;
    test(compare_ends(array('aba', 'xyz', 'aa', 'x', 'bbb')), 3);
    test(compare_ends(array('', 'x', 'xy', 'xyx', 'xx')), 2);
    test(compare_ends(array('aaa', 'be', 'abc', 'hello')), 1);
}
test_compare_ends();