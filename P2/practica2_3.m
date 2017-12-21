%%Mayra Castrosqui y Jaime Dan Porras
%%Práctica 2 de Matlab



clear all
%HOJA 2 PR3 %%%%%%%%%%%%%%%%%%%%%%%%
disp('PROBLEMA 3')
 A = [1 0 3; 2 4 6; 5 6 1]
 n = 3;
 
 fprintf('a) Norma 1 ')
 for j = 1:n
	sum(j) = sum(abs(A(:,j)));
 end
 max = max(sum);
 norm1 = max
 
 fprintf('b) Norma infinito ')
 for i=1 : n
    sum(i) = sum(abs(A(i,:)));
 end
 maxinf= max(sum);
 norminf = maxinf
 
 fprintf('c) Norma Fröbenius ')
 normFrob = sqrt(trace(A*A'))
 
 fprintf('Usando el comando norm:')
 disp(' ')
 fprintf('Norma 1' )
 norm(A,1)
 fprintf('Norma infinito' )
 norm(A,Inf)
  fprintf('Norma frobenius' )
 norm(A,'fro')