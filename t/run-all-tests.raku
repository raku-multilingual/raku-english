#!/usr/bin/env raku
use v6.d;

say "=== Running All English Module Tests ===\n";

my @test_files = dir('t', test => /\.rakutest$/);

my $all_passed = True;

for @test_files.sort -> $test_file {
    say "Running: $test_file";
    my $result = run 'raku', $test_file, :out, :err;
    my $output = $result.out.slurp;
    my $error = $result.err.slurp;
    
    say $output;
    if $error {
        say "ERRORS:";
        say $error;
        $all_passed = False;
    }
    say "-" x 60;
}

say $all_passed ?? "\nALL TESTS PASSED! ✓" !! "\nSOME TESTS FAILED! ✗";
exit $all_passed ?? 0 !! 1;