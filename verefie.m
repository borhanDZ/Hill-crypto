function test = verefie(msg)
char = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',',','!','?'];
   
   test = true;
%__Eliminer l'espace entre les lettres
   msg = El_espace(msg);
   
 for i = 1 : length(msg)
     T = 1;
   for j = 1 : length(char)
     if(msg(i) ~= char(j))
         mat(1,i) = T;
         T = T+1;
     else
         T = 0;
     end
        
   end
 end
   for i = 1 : length(mat) 
     if(mat(1,i) == 29)
         test = false;
     end
   end
end

