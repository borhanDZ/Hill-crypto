function m = El_espace(msg)

   j = 1;
 for i = 1 : length(msg)
    if(msg(i) == ' ')
    else
       m(j) = msg(i);
       j = j+1;
    end 
 end

end

