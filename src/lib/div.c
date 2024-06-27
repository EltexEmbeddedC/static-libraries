double div(int a, int b, short* error) {
  if (b == 0) {
    if (error != 0) {
      *error = 1;
    }
    return 0.0;
  }
  if (error != 0) {
    *error = 0;
  }
  return (double)a / b;
}