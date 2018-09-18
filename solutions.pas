unit Solutions;

{$mode tp}
{$H+}

interface

uses
  SysUtils;

function LargestPalindromeProduct: Int64;
function LargestPrimeFactor(number: Int64): Int64;
function EvenFibonacciNumbers: Int64;
function MultiplesOf3And5: Int64;

implementation

{[Largest palindrome product](https://projecteuler.net/problem=4)}
function LargestPalindromeProduct: Int64;
begin
  {TODO: Implement the LargestPalindromeProduct method }
  WriteLn('TODO: Implement the LargestPalindromeProduct method');
end;

{(Largest prime factor)[https://projecteuler.net/problem=3]}
function LargestPrimeFactor(number: Int64): Int64;
begin
  {TODO: Implement the LargestPrimeFactor method}
  WriteLn('TODO: Implement the LargestPrimeFactor method');
end;

{(Even Fibonacci numbers)[https://projecteuler.net/problem=2]}
function EvenFibonacciNumbers: Int64;
var
  fibPrev, fibCurr, sum: Int64;
  cap: Int64;
begin
  fibPrev := 1;
  fibCurr := 2;
  sum := 0;
  cap := 4000000;

  While fibCurr < cap do
  begin
    If (fibCurr mod 2 = 0) then sum := sum + fibCurr;

    fibCurr := fibCurr + fibPrev;
    fibPrev := fibCurr - fibPrev;
  end;

  WriteLn('Even Fibonacci Numbers - ', sum);
  EvenFibonacciNumbers := sum;
  WriteLn('TODO: Implement the EvenFibonacciNumbers method');
end;

{(Multiples of 3 and 5)[https://projecteuler.net/problem=1]}
function MultiplesOf3And5: Int64;
var
  i, sum: Int64;
begin
  sum := 0;
  i := 0;

  While i <= 999 do
  begin
    If (i mod 3 = 0) or (i mod 5 = 0) then sum := sum + i;
    i := i + 1;
  end;

  WriteLn('Multiples Of 3 And 5 - ', sum);
  MultiplesOf3And5 := sum;
end;

end.
