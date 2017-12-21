%hoja 3 ejercicio 3
% a)
n = input('introduzca n >1 ');
disp(' ')
fprintf('Matriz A(%d, %d) triangular inferior con diagonal de 1s', n, n)
disp(' ')
Aux = zeros(n);
for j=2:n
    s=sprintf('Deme un vector de %d componentes: ', j-1);
    Aux(j, 1:(j-1)) = input(s);
end
A = eye(n) + Aux
s = sprintf('introduce un vector de terminos independientes (%d coordenadas) ', n);
b = input(s);

u = trinf_diag(A,b)


% b)
n = input('introduzca n ');
disp(' ')
fprintf('Matriz A(%d, %d) triangular inferior', n, n)
disp(' ')
C = zeros(n);
for j=1:n
    s = sprintf('Deme un vector de %d componentes: ', j)
    C(j, 1:j) = input(s);
end
C
s = sprintf('introduce un vector de terminos independientes (%d coordenadas) ', n);
d = input(s);

v = trinf(C,d)


% c)
n = input('introduzca n ');
disp(' ')
fprintf('Matriz A(%d, %d) triangular superior', n, n)
disp(' ')
E = zeros(n);
for j=1:n
    s = sprintf('Deme un vector de %d componentes: ',n+1-j)
    E(j, j:n) = input(s);
end
E
s = sprintf('introduce un vector de terminos independientes (%d coordenadas) ', n);
f = input(s);

w = trsup(E,f)