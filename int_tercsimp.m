function [Vlr_da_Integral] = int_tercsimp(f,inicio_do_inter,fim_do_inter,erro = 'e',n_subinter = 'n',x_max = fim_do_inter) # Obs: inter de intervalos
 a = inicio_do_inter;
 b = fim_do_inter;
 n = 3;
 h = (b-a)/n;
 if ((n_subinter == 'n' && erro == 'e') || (n_subinter != 'n' && erro != 'e'))
   error('Escolha um e somente um dos parametro para o calculo da integral, erro ou numero de intervalos!!')
 endif
 if (n_subinter == 'n')
   while( abs(h^4*(b-a)*f(x_max)/180) > erro)
     n = n + 1;
     h = (b-a)/n;
   endwhile
   if (mod(n,2) == 1)
     n = n + 1;
   endif
 endif
 if (erro = 'e')
   if (mod(int64(n_subinter),3) != 0)
     error('Não é possível calcular a integral pela regra de simpson com uma quantidade indivisivel por 3 de subintervalos')
   endif
   n = n_subinter;
   h = (b-a)/n;
 endif
 S = 0; #Parte da soma das funções na formula
 for (i = 1:n-1) #calculando a soma, mod(i,2) é o resto mod 2
   if (mod(i,3) == 0)
      S = S + 2*f(a+h*i);
   else
      S = S + 3*f(a+h*i);
   endif
 endfor
 S = S + f(a) + f(b);  #o que faltou
 Vlr_da_Integral = 3*S*h/8; #A soma que foi feita ali em cima tem que ser multiplicada por h/2
endfunction
