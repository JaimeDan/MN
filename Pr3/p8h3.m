%Ejercicio 8 práctica 3
%Sistemas tridiagonales
A=input('introduce la matriz A (real def. positiva)');
disp(A)
n=size(A,1)
t=sprintf('Dame un vector segundo miembro  de %d coordenadas', n);
b=input(t)
S=3;%semi-ancho

m(1)=A(1,1);
g(1)=b(1)/m(1);
for k = 2:n
    m(k) = A(k,k)-(A(k-1,k)/m(k-1))*A(k,k-1);
    g(k) = (b(k)-g(k-1)*A(k,k-1))/m(k);
end

x(n)=g(n);
k=n-1;
while k>=1
    x(k)=g(k)-x(k+1)*A(k,k+1)/m(k);
    k=k-1;
end
disp('La solucion del sistema usando el algoritmo es: ');
disp(x);