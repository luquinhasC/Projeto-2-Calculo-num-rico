clear
clc ## De verdade não sei se era necesário  mas rodei tantas vzes esse treco que preferi deixar ele aqui


  display('Exercício 1')

display('a')
A =[[3,20,10,10];[4,25,15,8];[7,40,20,10];[20,50,22,15]];
display('A Matriz A do sistema é:'),display(A)
b = [504,1970,970,601]';
display('A Matriz B do sistema é:'),display(b);
display('pressione qualquer tecla para continuar')
pause


display('b')
[L,U] = LU(A);
display(L),display(U);
X = DecLU(A,b);
display('O Resultado do sistema é :'),display(X)

display('pressione qualquer tecla para continuar')
pause
display('c')
function [det] = rank(A)


    n = rows(A);
    det = 1;
    for i = 1:n
        det = det.*A(i,i);
    endfor
endfunction
display('O determinante da matriz A é:'),display(rank(L)*rank(U))
display('pressione qualquer tecla para continuar')
pause


  display('Exercício 2')
Pt = [[-50,0.125];[-20,0.128];[10,0.134];[70,0.144];[100,0.150];[120,0.155]]; #[T,C]

display('a')
[c,e,e2]=Rl(Pt);
display('A função f(x) = ax+b que aproxima os pontos é tal que')
a = c(1)
b = c(2)
x = -65:0.5:135;
r = @(x) a.*x + b;
plot(Pt(:,1),Pt(:,2),'o',x,r(x));
title ("Plotagem linear ");
grid on;
display('pressione qualquer tecla para continuar')
pause



display('b')
[csqr,esq,esq2] = Rsqr(Pt);
display('A função f(x) = ax^2+bx + c que aproxima os pontos é tal que')
a = csqr(3)
b = csqr(2)
c = csqr(1)
r = @(x) a.*x.^2 + b.*x + c;
x = -65:0.5:135;
plot(Pt(:,1),Pt(:,2),'o',x,r(x));
title ("Plotagem quadratica ");
grid on;
display('pressione qualquer tecla para continuar')
pause


display('c')
display('O erro quadrático médio da função linear é '),display(mean(e2))
display('O erro quadrático médio da função quadrática é'),display(mean(esq2))


  display('Exercício 3')
Vendas = [[1,4.0];[2,4.4];[3,5.2];[4,6.4];[5,8.0]];
[cp2, lixo1,lixo2]  = Rsqr(Vendas);
display('A função f(x) = ax^2+bx + c que aproxima os pontos é tal que')
a = cp2(3)
b = cp2(2)
c = cp2(1)
f = @(x) a.*x.^2 + b.*x + c;
x = -0:0.05:13;
plot(Vendas(:,1),Vendas(:,2),'o',x,f(x));
title ("Projeção de vendas ");
grid on;

display(f(12));
display('pressione qualquer tecla para continuar')
pause


  display('Exercício 4')
pathfinder = [[4.5,15];[-5.9,20];[-16.1,25];[-27.6,30];[-39.8,35];[-50.2,40];[-62.9,45]]
[cpf,erro1,erroquadratico] = Rl(pathfinder)
display('A função f(x) = ax+b que aproxima os pontos é tal que')
a = cpf(1)
b = cpf(2)
x = -65:0.1:5;
f = @(x) a.*x + b;
plot(pathfinder(:,1),pathfinder(:,2),'o',x,f(x));
title ("Plotagem linear do Pathfinder ");
grid on;

display('pressione qualquer tecla para continuar')
pause



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
f = inline("(e.^x)./x");
n = 5;
I_1 = int_trap(f,a,b,:,n,:);
display('O valor de I(1) calculado pela regra de trapézios é:'),display(I_1)
display('pressione qualquer tecla para continuar')
pause


display('b')
b_n = 1 + 2/5; ## a + 2*h
I_1s = int_simp(f,a,b_n,:,2,:) + int_tercsimp(f,b_n,b,:,3,:) ;
display('O valor de I(1) calculado pela regra de simpson repetida é:'),display(I_1s)

