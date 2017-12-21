%Ejercicio 6 práctica 3
%Cholesky matrices reales definidas positivas

A=input('introduce la matriz A (real def. positiva)');
disp(A)
n=size(A,1)
t=sprintf('Dame un vector segundo miembro  de %d coordenadas', n);
b=input(t)

M = zeros(n);

for i=1:n
    M(i, i) = A(i, i);
    for k = 1 : i - 1
        M(i, i) = M(i, i) - M(i, k)^2;
    end
    M(i,i) = M(i,i)^(0.5);
    
    for j = i+1:n
        M(j,i) = A(i,j);
        for k= 1:i-1
            M(j,i) = M(j,i)-M(i,k)*M(j,k);
        end
        M(j,i) = M(j,i)/M(i,i);
    end
end

M

while resp==1
    w=trinf(M, b);
    u=trsup(M.', w);

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