IN=argument0;
Rotacionado="";
inverter="";
substituir="";
OUT="";
chave3=real(global.key1[3]);
chave4=real(global.key1[4]);
chave5=real(global.key1[5]);
chave6=real(global.key1[6]);
chave8=real(global.key1[8]);
adicionados=0;
caracteres=0;
//contar
for(i=0;i<100;i++){
   if IN[i] != ''{caracteres ++;}
}
carac=caracteres-1;
//rotaciona\\

for(r=0;r<chave4;r++){
    for(i=0;i<carac;i++){
       Rotacionado[i+1]=IN[i];                             
    }
    Rotacionando[0]=IN[carac];
} 
//inverter\\
if chave5 == 1 {
   inverter[0]=Rotacionado[carac];
   inverter[carac]=Rotacionado[0];
   for(i=1;i<carac;i++){
      inverter[0+i]=Rotacionado[(carac)-i];   
   }
}
//substituir
/*
switch (chave8){
    case 0:for(i=0;i<carac;i++){
         inverter[i]=real(inverter[i])+chave6;
    }
    case 1:for(i=0;i<carac;i++){
         inverter[i]=real(inverter[i])-chave6;
    }
    case 2:for(i=0;i<carac;i++){              //caso de erro tirar o case 2 e 3
         inverter[i]=real(inverter[i])/chave6;
    }
    case 3:for(i=0;i<carac;i++){
         inverter[i]=real(inverter[i])*chave6;
    }
} */
//adicionarcaracteres
if chave3>caracteres{
   for(i=0;caracteres+i<chave3;i++){
      inverter[caracteres+i]=0;
      adicionados++;
   }
}
//gerarcaracteresaos adicionados
for(i=0;i<adicionados;i++){
   adicionar[caracteres+i]=global.key2[i];
}
//misturar
key3=scr_key3();
for(z=0;z<chave3;z++){
   OUT[z]=adicionar[key3[z]];
}
return (OUT);
