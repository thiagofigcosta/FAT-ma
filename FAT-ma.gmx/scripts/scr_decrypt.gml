IN=argument0;
Rotacionado="";
inverter="";
substituir="";
adicionar="";
OUT="";
adicionados=0;
caracteres=0;
testestring=0;
//contar
for(i=0;i<100;i++){
   if IN[i] != ''{caracteres ++;}
}

//misturar
key3=scr_key3();
for(z=0;z<global.key1[3];z++){
   adicionar[key3[z]]=IN[z];
}

//adicionarcaracteres
if global.key1[3]>caracteres{
   for(i=0;caracteres+i<global.key1[3];i++){
      inverter[caracteres+i]=666;
      adicionados++;      
   }
   for(a=0;a<caracteres+adicionados;a++){
      if(inverter[a] != 666){
         adicionar[a]=inverter[a];
      }
   }
}

//substituir
switch (global.key1[8]){
    case 0:for(i=0;i<caracteres-1;i++){
         adicionar[i]=adicionar[i]-global.key1[6];
    }
    case 1:for(i=0;i<caracteres-1;i++){
         adicionar[i]=adicionar[i]+global.key1[6];
    }
    case 2:for(i=0;i<caracteres-1;i++){              //caso de erro tirar o case 2 e 3
         adicionar[i]=adicionar[i]*global.key1[6];
    }
    case 3:for(i=0;i<caracteres-1;i++){
         adicionar[i]=adicionar[i]/global.key1[6];
    }
} 

//inverter\\
if global.key1[5] == 1 {
   Rotacionado[0]=adicionar[caracteres-1];
   Rotacionado[caracteres-1]=adicionar[0];
   for(i=1;i<caracteres-1;i++){
      Rotacionado[0+i]=adicionar[(caracteres-1)-i];   
   }
}

//rotaciona\\
for(r=0;r<global.key1[4];r++){
    for(i=0;i<caracteres-1;i++){
       OUT[i-1]=Rotacionado[i];                             
    }
    OUT[0]=Rotacionando[caracteres-1];
}
//checa se é string ou numero
for(t=0;t<35;t++){
   if OUT[t] != ''{
      testestring++;
   }
}
if testestring == 1 {
   OUT=real(OUT[0]);
}
return (OUT);
