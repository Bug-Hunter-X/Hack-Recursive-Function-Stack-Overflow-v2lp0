function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error if the input `x` is a large number. This is because the recursive call to `foo` will continue until the stack is exhausted.  The solution involves using an iterative approach instead.