PImage imagen;

void setup (){
    size(800, 400);
    background(#FFFFFF);

    



};

void draw(){
    imagen=loadImage("llave-francesa.jpg");
    image(imagen,0 , 0, 400, 400);    

//quad(400, 800, 800, 0, 800, 0, 400, 400);

strokeWeight(4);
    fill(#808080, 20);


//...........Forma de la herramienta...........
beginShape();
     vertex (428, 192);
     vertex (433, 186);
     vertex (435, 182);
     vertex (439, 177);
     vertex (446, 172);
     vertex (449, 166);
     vertex (457, 161);
     vertex (470, 157);
     vertex (477, 159);
     vertex (486, 164);
     vertex (496, 169);
     vertex (504, 170);
     vertex (512, 173);
     vertex (523, 179);
     vertex (533, 182);
     vertex (550, 185);
     vertex (770, 184);
     vertex (776, 196);
     vertex (776, 201);
     vertex (777, 207);
     vertex (774, 214);
     vertex (770, 219);
     vertex (763, 221);
     vertex (552, 213);
     vertex (542, 213);
     vertex (534, 218);
     vertex (524, 222);
     vertex (517, 224);
     vertex (509, 230);
     vertex (502, 234);
     vertex (497, 239);
     vertex (490, 243);
     vertex (487, 245);
     vertex (485, 238);
     vertex (485, 237);
     vertex (482, 233);
     vertex (479, 228);
     vertex (473, 228);
     vertex (465, 228);
     vertex (460, 228);
     vertex (455, 226);
     vertex (448, 226);
     vertex (440, 222);
     vertex (435, 220);
     vertex (471, 206);
     vertex (471, 200);
     vertex (469, 191);
     vertex (465, 186);
     vertex (458, 186);
     vertex (449, 187);
     vertex (443, 190);
     vertex (438, 191);
     vertex (429, 194);
endShape();


//.....Rueditaaa milimetrica.....
//fill(#FFFFFF, 100);
beginShape();
    
     vertex (511, 186);
     vertex (518, 202);
     vertex (493, 214);
     vertex (484, 192);
     vertex (497, 186);
     vertex (508, 186);
     vertex (510, 190);
endShape();


// ...................rebolde del medio.......................
strokeWeight(3);
beginShape();
    
     vertex (484, 194);
     vertex (493, 214);
     vertex (517, 205);
     vertex (520, 204);
     vertex (522, 204);
     vertex (532, 204);
     vertex (739, 212);
     vertex (738, 207);
     vertex (737, 206);
     vertex (737, 203);
     vertex (737, 201);
     vertex (738, 197);
     vertex (738, 195);
     vertex (738, 192);
     vertex (738, 190);
     vertex (545, 190);
     vertex (537, 190);
     vertex (532, 188);
     vertex (528, 186);
     vertex (524, 186);
     vertex (519, 186);
     vertex (505, 186);
     vertex (499, 186);
     vertex (492, 189);
     vertex (488, 191);
     vertex (484, 192);
     vertex (487, 201);
     vertex (489, 210);
     vertex (491, 214);
     vertex (493, 217);
     vertex (484, 194);

endShape();


//.........Vacio mango........

strokeWeight(3);
fill(#FFFFFF, 100);    
  
beginShape();
     vertex (746, 190);
     vertex (746, 210);
     vertex (766, 211);
     vertex (767, 211);
     vertex (767, 208);
     vertex (767, 204);
     vertex (768, 201);
     vertex (768, 197);
     vertex (766, 193);
     vertex (765, 192);
     vertex (762, 190);
     vertex (745, 190);

  
endShape();

//........................intento de ruedita 2...............
beginShape();
     vertex (509, 185);
     vertex (517, 204);
     vertex (494, 213);
     vertex (483, 191);
     vertex (496, 185);
     vertex (509, 184);
     vertex (518, 204);
     vertex (494, 213);
     vertex (491, 208);
     vertex (515, 199);
     vertex (514, 196);
     vertex (489, 205);
     vertex (487, 199);
     vertex (508, 192);
     vertex (506, 185);
     vertex (485, 196);
     vertex (486, 192);
     vertex (498, 186);
     vertex (507, 186);
     vertex (512, 204);
     vertex (506, 208);
     vertex (494, 192);

  
endShape();

//...................marcas arriba.............. 1........

beginShape();
    
     vertex (474, 161);
     vertex (485, 186);
     vertex (488, 186);
     vertex (478, 162);
     vertex (474, 161);
endShape();


//..............................marcar arriba...........2.....
beginShape();
     vertex (499, 215);
     vertex (505, 227);
     vertex (507, 230);
     vertex (502, 233);
     vertex (494, 217);
     vertex (494, 215);
     vertex (498, 213);
     vertex (496, 215);
     vertex (504, 229);
     vertex (497, 217);

endShape();

//......................detalles.......................
fill(#808080, 100);
beginShape();
     vertex (469, 204);
     vertex (479, 226);
     vertex (485, 242);
     vertex (488, 245);
     vertex (497, 237);
     vertex (500, 234);
     vertex (504, 230);
     vertex (502, 228);
     vertex (495, 217);
     vertex (489, 210);
     vertex (487, 203);
     vertex (484, 196);
     vertex (483, 191);
     vertex (484, 186);
     vertex (485, 184);
     vertex (485, 184);
     vertex (482, 178);
     vertex (478, 162);
     vertex (473, 158);
     vertex (469, 156);
     vertex (456, 159);
     vertex (453, 162);
     vertex (448, 165);
     vertex (445, 166);
     vertex (441, 168);
     vertex (436, 173);
     vertex (435, 178);
     vertex (432, 180);
     vertex (430, 183);
     vertex (426, 187);
     vertex (426, 191);
     vertex (427, 191);
     vertex (433, 191);
     vertex (441, 188);
     vertex (452, 187);
     vertex (461, 185);
     vertex (466, 188);
     vertex (468, 195);
     vertex (468, 201);
     vertex (469, 203);
     vertex (472, 206);


endShape();



//..............................textoo.......................


beginShape();    
     vertex (583, 189);
     vertex (584, 206);
     vertex (700, 209);
     vertex (697, 189);
     vertex (591, 189);
     vertex (587, 189);
     vertex (578, 190);

endShape();


fill(#FFFFFF, 100);
text("WURT", 622, 203);





};






void mousePressed(){
    println("     vertex ("+ (mouseX + ", " + mouseY) + ");" );
};


