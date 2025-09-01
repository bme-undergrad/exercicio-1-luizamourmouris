function t = exercicio1(func,x0)

% nao alterar: inicio
es = 1;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%
h= zeros(imax, 1);
h(1)= x0;
erro= zeros(length(h), 1);

for ii = 1:length(h)-1
  if ii~=1
    erro (ii)= abs((h(ii)-h(ii-1))/h(ii))
    if erro (ii)< es
      break
    endif
  endif
  h(ii+1)=h(ii)-func(h(ii))/func_d(h(ii))
endfor
%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
