#ifndef VALUES
#define VALUES
	enum{size = 28};
	int8_t a[size][size] = {{90, 26, 95, 104, 127, 103, 52, 111, 77, 31, 120, 21, 93, 2, 104, 38, 113, 95, 79, 62, 12, 43, 56, 24, 107, 73, 80, 114},{56, 38, 10, 23, 22, 46, 76, 106, 98, 99, 106, 16, 43, 113, 80, 123, 26, 102, 35, 125, 50, 86, 100, 87, 111, 47, 64, 34},{32, 117, 18, 31, 23, 99, 124, 26, 68, 86, 58, 47, 26, 85, 9, 55, 54, 54, 8, 115, 113, 127, 81, 81, 108, 3, 38, 100},{6, 76, 14, 120, 8, 36, 11, 106, 98, 80, 48, 92, 58, 27, 34, 14, 33, 22, 17, 98, 89, 123, 5, 65, 37, 60, 22, 74},{56, 88, 107, 47, 64, 39, 87, 19, 77, 43, 96, 5, 110, 67, 100, 103, 34, 69, 43, 94, 109, 86, 30, 55, 73, 110, 30, 17},{72, 87, 67, 13, 92, 98, 8, 113, 13, 31, 76, 57, 66, 7, 78, 57, 78, 73, 12, 36, 73, 63, 39, 56, 94, 74, 84, 113},{104, 110, 92, 51, 55, 115, 31, 39, 71, 30, 121, 29, 78, 79, 17, 111, 80, 32, 53, 100, 48, 16, 109, 38, 1, 114, 115, 107},{43, 66, 58, 93, 99, 31, 109, 94, 8, 16, 21, 60, 71, 50, 74, 49, 87, 43, 41, 13, 127, 125, 40, 87, 72, 50, 96, 96},{50, 100, 33, 35, 17, 56, 68, 119, 71, 72, 110, 82, 5, 79, 34, 108, 45, 75, 117, 52, 58, 90, 36, 96, 12, 100, 80, 38},{15, 103, 50, 88, 121, 104, 105, 32, 91, 76, 95, 125, 126, 115, 125, 67, 24, 8, 55, 44, 20, 29, 32, 109, 100, 61, 3, 81},{10, 37, 90, 118, 86, 53, 10, 112, 7, 65, 32, 82, 43, 7, 5, 113, 46, 50, 85, 22, 123, 42, 110, 116, 4, 86, 71, 19},{31, 107, 68, 41, 79, 78, 93, 58, 39, 94, 123, 36, 39, 127, 42, 115, 111, 98, 61, 33, 107, 67, 58, 110, 96, 89, 70, 19},{21, 50, 56, 70, 51, 56, 5, 2, 34, 124, 94, 14, 122, 112, 1, 31, 44, 104, 10, 33, 11, 47, 7, 122, 43, 62, 22, 43},{120, 12, 61, 125, 81, 90, 82, 39, 121, 119, 50, 5, 3, 61, 71, 88, 118, 78, 48, 111, 73, 40, 57, 8, 107, 10, 117, 85},{124, 11, 73, 16, 80, 45, 79, 103, 80, 105, 62, 92, 36, 113, 12, 44, 92, 2, 2, 114, 78, 122, 27, 81, 41, 98, 53, 11},{54, 125, 3, 3, 37, 90, 41, 79, 113, 39, 89, 54, 4, 43, 93, 41, 82, 63, 64, 47, 2, 123, 94, 91, 3, 120, 126, 94},{6, 121, 19, 54, 70, 29, 49, 127, 105, 45, 22, 113, 71, 57, 76, 109, 2, 72, 77, 60, 117, 101, 121, 90, 28, 117, 29, 107},{12, 49, 40, 40, 73, 118, 57, 124, 85, 59, 125, 95, 28, 1, 28, 6, 8, 23, 35, 122, 122, 66, 17, 75, 118, 13, 8, 127},{31, 52, 27, 34, 114, 9, 77, 93, 73, 90, 116, 113, 86, 114, 97, 29, 43, 99, 38, 62, 19, 117, 79, 14, 14, 51, 67, 46},{52, 93, 113, 112, 14, 80, 124, 48, 30, 102, 92, 22, 36, 119, 23, 6, 32, 19, 4, 35, 2, 32, 114, 69, 65, 82, 34, 34},{59, 50, 103, 36, 63, 94, 53, 5, 43, 123, 120, 25, 1, 125, 41, 24, 94, 90, 46, 43, 102, 33, 54, 113, 83, 92, 6, 120},{19, 91, 82, 112, 54, 84, 43, 76, 105, 5, 124, 93, 20, 41, 45, 26, 11, 79, 5, 126, 45, 11, 110, 105, 54, 87, 30, 62},{122, 52, 47, 46, 47, 51, 51, 77, 96, 55, 99, 75, 18, 90, 30, 107, 112, 119, 106, 29, 87, 87, 87, 64, 112, 60, 76, 43},{95, 123, 102, 18, 26, 91, 118, 124, 36, 31, 45, 79, 54, 102, 66, 20, 80, 10, 50, 16, 4, 20, 10, 56, 83, 96, 86, 26},{106, 99, 11, 96, 22, 48, 38, 67, 127, 81, 9, 90, 22, 60, 102, 92, 109, 76, 97, 1, 20, 120, 93, 25, 60, 84, 93, 23},{121, 74, 65, 91, 9, 61, 42, 23, 37, 59, 31, 53, 84, 107, 123, 23, 53, 23, 38, 78, 52, 58, 17, 27, 32, 80, 55, 75},{49, 37, 29, 52, 94, 85, 15, 106, 106, 82, 99, 119, 110, 92, 18, 94, 99, 47, 66, 71, 110, 6, 122, 72, 43, 25, 71, 126},{40, 61, 51, 7, 104, 44, 49, 56, 65, 60, 38, 44, 57, 42, 89, 50, 105, 16, 55, 46, 57, 83, 126, 1, 82, 22, 80, 5}};
#endif