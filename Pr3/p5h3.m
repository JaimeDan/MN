%Ejercicio 5 práctica 3
%LU matriz banda
s = input('Dame el semiancho de la banda')
s=s-1;
A=input('introduce la matriz A ');
disp(A)
n=size(A,1)
t=sprintf('Dame un vector segundo miembro  de %d coordenadas', n);
b=input(t)


matriz = zeros(n);

for i = 1:n
    for  j = i : min([i+s, n])
        matriz(i, j) = A(i, j);
        for k = max([1,i-s]) : i-1
            matriz (i,j) = matriz(i,j) - matriz(i,k)*matriz(k,j)
        end
        
    end
    for j=i+1:min([i+s,n])
        matriz(j,i) = A(j,i);
        for k=max([1,i-s]) : i-1
            matriz(j,i) = matriz (j,i) - matriz(j,k)*matriz(k,i);
        end
        matriz(j,i) = matriz(j,i)/matriz(i,i);
    end
end

U = triu(matriz)
L=matriz-U+eye(n)

while resp==1
    w=trinf(L, b);
    u=trsup(U, w);
    disp('La solucion del sistema es: ');
    disp(u);
    
    disp('?Quieres resolver otro sistema con esta misma matriz?')
    disp('En caso afirmativo teclea 1 ')
    resp=input('En caso negativo teclea 0 ');
    if resp==1
        t=sprintf('Dame un vector segundo miembro  de %d coordenadas ',n);
        b=input(t);
    else
        resp==0;
    end
end
