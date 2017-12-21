%%Mayra Castrosqui y Jaime Dan Porras
%%Práctica 2 de Matlab



clear all
%HOJA 2 PR2
disp('PROBLEMA 2')
n = input('introduzca n ');
disp(' ')
fprintf('La matriz A es del tipo  %d x %d\n' , n ,n)
A = input ('Deme la matriz A ');
disp(' ')
fprintf('La matriz B es del tipo %d x %d\n', n, n)
B = input('Deme la matriz B');
disp(' ')


 %A(2;:)*v(:)
disp('a) ')
fprintf('det(AB) ')
det(A*B)
A
fprintf('det(BA) ')
det(B*A)
fprintf('det(A)det(B)')
det(A)*det(B)

disp('b) ')
 lambda = input('introduzca lambda ');
disp(' ')
fprintf('det(%d * A)', lambda)
 det(lambda*A)
fprintf('%d ^ %d det(A)', lambda, n)
lambda^n*det(A)
 
 disp('c) ')
 fprintf('det(A*)')
 det(A')
 fprintf('conj(det(A))')
 conj(det(A))
 
 disp('d) ')
 L = eig(A);
 m = 1;
 for  i = 1:n
     m = m*L(i);
 end
 fprintf('det(A) = %d', det(A))
 disp(' ')
 fprintf('producto de autovalores de A = %d', m)
 disp(' ')