bool isPrime(int number) {
  if (number <= 1) return false;
  if (number <= 3) return true;

  // Cek kelipatan 2 dan 3
  if (number % 2 == 0 || number % 3 == 0) return false;

  for (int i = 5; i * i <= number; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false;
    }
  }

  return true;
}