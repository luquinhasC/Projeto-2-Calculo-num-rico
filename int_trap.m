function [Valor_da_Integral] = int_trap(f,inicio_do_inter,fim_do_inter,erro = 'e',n_subinter = 'n',x_max = 2) # Obs: inter de intervalos
 a = inicio_do_inter;
 b = fim_do_inter;
 n = 1;
 h = (b-a)/n;
 if ((n_subinter == 'n' && erro == 'e') || (n_subinter != 'n' && erro != 'e'))
   error('Escolha um e somente um dos parametro para o calculo da integral, erro ou numero de intervalos!!')
 endif
 if (n_subinter == 'n')
   while( abs(-h^2*(b-a)*f(x_max)/12) > erro)
     n = n + 1;
     h = (b-a)/n;
   endwhile
 endif
 if (erro = 'e')
   n = n_subinter;
   h = (b-a)/n;
 endif
 S = 0; #Parte da soma das funções na formula
 for (i = 1:n-1)
    S = S + 2*f(a+h*i); #somas multiplicados por 2
 endfor
 S = S + f(a) + f(b); #o que faltou
 Valor_da_Integral = S*h/2; #A soma que foi feita ali em cima tem que ser multiplicada por h/2
endfunction
