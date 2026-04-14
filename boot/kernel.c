void kmain() {
    char* vga_buffer = (char*) 0xB8000;
    vga_buffer[0] = 'H'; vga_buffer[1] = 0x0F;
    vga_buffer[2] = 'e'; vga_buffer[3] = 0x0F;
    vga_buffer[4] = 'l'; vga_buffer[5] = 0x0F;
    vga_buffer[6] = 'l'; vga_buffer[7] = 0x0F;
    vga_buffer[8] = 'o'; vga_buffer[9] = 0x0F;
}