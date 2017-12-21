%%Mayra Castrosqui y Jaime Dan Porras
%%Práctica 2 de Matlab



clear all
%HOJA 2 PR5 %%
% potencia matriz comprobando previamente sus normas

disp('PROBLEMA 5')
M=input('Introduce la matriz \n');
n=size(M,1);
a=input('Introduce la potencia');

for i=1:n
   n1(i)=sum(abs(M(:,i)));
   ninf(i)=sum(abs(M(i,:)));
   nfr(i)=sum(abs(M(:,i)).^2);
end

Norma1=max(n1);
NormaInfinito=max(ninf);
NormaFrobenius=sqrt(sum(nfr));
disp(' ')

if Norma1<1 | NormaInfinito<1 | NormaFrobenius<1
 resultado=M;
 for i=1:a-1
    resultado=resultado*M;
 end
 disp('Resultado')
 disp(resultado)
else
     ('Ninguna de las 3 normas es menor que 1 y no se calcula la potencia de la matriz')
end

