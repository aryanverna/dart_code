import 'dart:io';

void main() {
  // Read in the first matrix
  print("Enter the elements of the first matrix:");
  List<List<int>> matrix1 = readMatrix();

  // Read in the second matrix
  print("Enter the elements of the second matrix:");
  List<List<int>> matrix2 = readMatrix();

  // Add the matrices
  List<List<int>> result = addMatrices(matrix1, matrix2);

  // Display the result
  print("Result:");
  printMatrix(result);
}

List<List<int>> readMatrix() {
  List<List<int>> matrix = [];
  for (int i = 0; i < 3; i++) {
    List<int> row = [];
    for (int j = 0; j < 3; j++) {
      String? input = stdin.readLineSync();
      ;
      row.add(int.parse(input!));
    }
    matrix.add(row);
  }
  return matrix;
}

List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> result = [];
  for (int i = 0; i < 3; i++) {
    List<int> row = [];
    for (int j = 0; j < 3; j++) {
      row.add(matrix1[i][j] + matrix2[i][j]);
    }
    result.add(row);
  }
  return result;
}

void printMatrix(List<List<int>> matrix) {
  for (List<int> row in matrix) {
    for (int element in row) {
      print("$element ");
    }
    print("\n");
  }
}
