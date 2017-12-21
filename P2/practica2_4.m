%%Mayra Castrosqui y Jaime Dan Porras
%%Práctica 2 de Matlab



clear all
%HOJA 2 PR4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('PROBLEMA 4')
n = input('introduzca n ');
disp(' ')

%Superior * vector
fprintf('a) TRIANGULAR SUPERIOR * VECTOR')
disp(' ')
fprintf('Matriz A(%d, %d) triangular superior', n, n)
disp(' ')
A = zeros(n);
for j=1:n
    fprintf('Deme un vector de %d componentes',n+1-j)
    A(j, j:n) = input(': ');
end
disp(A)
fprintf('Deme un vector de %d componentes',n)
v = input(': ')

for j=1:n %producto
    sum =0;
    for k=j:n
        sum = sum + A(j, k) * v(k);
    end
    producto(j) = sum;
end
disp('A*v =')
disp('programa')
disp(producto)
disp('comando matlab')
disp(A*v.')

%Inferior * vector
fprintf('b) TRIANGULAR INFERIOR * VECTOR')
disp(' ')
fprintf('Matriz A(%d, %d) triangular inferior', n, n)
disp(' ')
A = zeros(n);
for j=1:n
    fprintf('Deme un vector de %d componentes', j)
    A(j, 1:j) = input(': ');
end
disp(A)
fprintf('Deme un vector de %d componentes',n)
v = input(': ')

for j=1:n %producto
    sum =0;
    for k=1:j
        sum = sum + A(j, k) * v(k);
    end
    producto(j) = sum;
end
disp('A*v =')
disp('programa')
disp(producto)
disp('comando matlab')
disp(A*v.')

 
%Superior * superior
fprintf('c) TRIANGULAR SUPERIOR * TRIANGULAR SUPERIOR')
disp(' ')
fprintf('Matriz A(%d, %d) triangular superior', n, n)
disp(' ')
A=zeros(n);
 for j=1:n
     fprintf('Deme un vector de %d componentes',n+1-j)
     A(j, j:n) = input(': ');
 end
 disp(A)
 fprintf('Matriz B(%d, %d) triangular superior', n, n)
 disp(' ')
 B= zeros(n);
 for j=1:n
    fprintf('Deme un vector de %d componentes',n+1-j)
     B(j, j:n) = input(': ');
 end
 disp(B)
 
 for j=1:n
     for k=j:n
         if k>=j
             sum = 0;
             for m=j:k
                 sum = sum + A(j, m)*B(m, k);
             end
             C(j,k) = sum;
         else C(j,k) = 0;
         end
     end
 end
 disp('A*B')
 disp('programa')
 C
 disp('comando matlab')
 A*B
 
 
 
 
 
 %Inferior * inferior
fprintf('b) TRIANGULAR INFERIOR * TRIANGULAR INFERIOR')
disp(' ')
fprintf('Matriz A(%d, %d) triangular inferior', n, n)
disp(' ')
A=zeros(n);
 for j=1:n
    fprintf('Deme un vector de %d componentes', j)
     A(j, 1:j) = input(': ');
 end
 A
fprintf('Matriz B(%d, %d) triangular inferior', n, n)
disp(' ')
B=zeros(n);
 for j=1:n
    fprintf('Deme un vector de %d componentes', j)
     B(j, 1:j) = input(': ');
 end
 B
 
 C=zeros(n);
 for j=1:n
     for k=1:j
         sum = 0;
         for m=k:j
             sum = sum + A(j, m)*B(m, k);
         end
         C(j,k) = sum;
     end
 end
 disp('A*B')
 disp('programa')
 C
 disp('comando matlab')
 A*B
 