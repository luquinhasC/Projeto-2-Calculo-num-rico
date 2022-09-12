## Exercício 1
A =[[3,20,10,10],[4,25,15,8],[7,40,20,10],[20,50,22,15]];
display('A Matriz A do sistema é:',A);
b = [504,1970,970,601]';
display('A Matriz B do sistema é:',b);

[L,U] = LU(A);
display(L,U);
X = DecLU(A,b);
display('O Resultado do sistema é :', X)
function [det] = rank(A)
    n = rows(A);
    det = 1;
    for i 1:n:
        det = det*A[i,i];
    endfor
endfunction
display('O determinante da matriz A é: ',rank(L)*rank(U)) 
pause
## Exercício 2
## a)
Pt = [,[-50,0.125],[-20,0.128],[10,0.134],[70,0.144],[100,0.150],[120,0.155]]; #[T,C]
[c,e,e2]=Rl(Pt);
display(esq2)
###Escrever display com a função escrita certinho
## b)
[csqr,esq,esq2] = Rsqr(Pt);
display(esq2)
## c)

## Exercício 3

Vendas = [[1,4.0],[2,4.4],[3,5.2],[4,6.4],[5,8.0]];
[cp2, lixo1,lixo2]  = Rsqr(Vendas);
function [y] = quad(x,c):
    y = c[1] + x.*c[2] + c[3].*x^2;
endfunction

display(quad(10,cp2));

## Exercício 4

pathfinder = [[4.5,15],[-5.9,20],[-16.1,25],[-27.6,30],[-39.8,35],[-50.2,40],[-62.9,45]]
[cpf,erro1,erroquadratico] = Rl(pathfinder)
  display('Exercício 5')
X = [[1,7];[3,3];[6,1]];
Xi = X;
for i = 1:3
  Xi(i,1) = 1./Xi(i,1);
endfor
[c,e,e2] = Rl(Xi)
display('A função f(x) = a+b/x que aproxima os pontos é tal que')
a = c(2)
b = c(1)
x = 0:0.1:7;
f = @(x) a + b./x;
plot(X(:,1),X(:,2),'o',x,f(x));
title ("Plotagem de curva ");
grid on;
display('pressione qualquer tecla para continuar')
pause




  display(' Exercício 6')
  display('a')
a = 1;
b = 2;
f = @(x) e.^x ./x;
n = 5;
I_1 = int_trap(f,a,b,:,n,:);
display('O valor de I(1) calculado pela regra de trapézios é:'),display(I_1)
display('pressione qualquer tecla para continuar')
pause


display('b')
b_n = 1 + 2/5; ## a + 2*h
I_1s = int_simp(f,a,b_n,:,2,:) + int_tercsimp(f,b_n,b,:,3,:) ;
display('O valor de I(1) calculado pela regra de simpson repetida é:'),display(I_1s)

