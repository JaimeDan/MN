%%Mayra Castrosqui y Jaime Dan Porras
%%Práctica 2 de Matlab



clear all
%Hoja 2 problema 1
disp('PROBLEMA 1')
n1=input('introduzca n1 ');
n2 = input('introduzca n2 ');
disp(' ')
fprintf('La matriz A es del tipo  %d x %d\n' , n1 ,n1)
A = input ('Deme la matriz A ');
disp(' ')
fprintf('La matriz B es del tipo %d x %d\n', n1, n2)
B = input('Deme la matriz B');
disp(' ')
fprintf('La matriz C es del tipo %d x %d\n', n2, n1)
C = input('Deme la matriz C');
disp(' ')
fprintf('La matriz D es del tipo %d x %d\n', n2, n2)
D = input('Deme la matriz D');
disp(' ')
M = [A B;C D]
n1=input('introduzca n1 ');
n2 = input('introduzca n2 ');
disp(' ')
fprintf('La matriz E es del tipo  %d x %d\n' , n1 ,n1)
E = input ('Deme la matriz E ');
disp(' ')
fprintf('La matriz F es del tipo %d x %d\n', n1, n2)
F = input('Deme la matriz F ');
disp(' ')
fprintf('La matriz G es del tipo %d x %d\n', n2, n1)
G = input('Deme la matriz G ');
disp(' ')
fprintf('La matriz H es del tipo %d x %d\n', n2, n2)
H = input('Deme la matriz H ');
disp(' ')
N = [E F;G H]
fprintf('Producto normal: ')
P1 = M*N
disp(' ')
fprintf('Producto por bloques: ')
P2 = [A*E+B*G A*F+B*H; C*E+D*G C*F+D*H]
