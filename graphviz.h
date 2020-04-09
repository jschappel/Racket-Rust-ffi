/*
The EXPORT keyword is defined as __declspec(dllexport) which is a DLL export directive. 
Using this directive basically tells the linker to expose the function for import to other DLLs or programs.
*/
#define EXPORT __declspec(dllexport)