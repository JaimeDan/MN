%Ejercicio 4 práctica 3
%factorización LU
A=input('introduce la matriz A ');
disp(A)
n=size(A,1)
s=sprintf('introduce un vector segundo miembro de %d coordenadas ', n);
b=input(s)

%comprobación usando el comando LU de matlab
disp('La solucion del sistema usando el comando matlab es: ');
%[L1, U1] = LU(A);
%w1 = trinf(L1, b);
%u1 = trsup(U1, w);
%disp(u1);
disp(' ');

matriz = A;

for i = 1:n
    for j= i:n
        matriz(i,j) = A(i,j);
        for k=1:i-1
            matriz(i,j) = matriz (i,j)-matriz(i,k)*matriz(k,j);
        end
    end
    for j = i+1:n
        matriz(j,i) = A(j,i);
        for k=1:i-1
            matriz(j,i) = matriz(j,i) - matriz(j,k)*matriz(j,i);
        end
        matriz(j,i) = matriz(j,i)/matriz(i,i);
    end
end


U = triu(matriz)
L = matriz - U + eye(n)

L*U 

w = trinf(L, b);
u = trsup(U, w);

disp('La solucion del sistema usando el algoritmo es: ');
disp(u);