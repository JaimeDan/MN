%%Mayra Castrosqui y Jaime Dan Porras
%%Práctica 2 de Matlab



clear all
%HOJA 2 PR6 %%
disp('PROBLEMA 6')
A=[10 7 8 7;7 5 6 5;8 6 10 9;7 5 9 10]
v = eig (A)
w = eig (inv(A))
cond2 = max(v)*max(w)

cond1 = cond(A, 1)
condinf = cond(A, inf)
condFro = cond(A, 'fro')