export nes_name="hello"

cc65 -Oirs $nes_name.c --add-source
ca65 crt0.s
ca65 $nes_name.s -g

ld65 -C nrom_32k_vert.cfg -o $nes_name.nes crt0.o $nes_name.o nes.lib -Ln labels.txt

rm *.o

rm labels.txt
rm $nes_name.s
echo "Done."
