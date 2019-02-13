void clear_video_memory() {
  char* videoMemory = (char*)0xB8000;
  for (int i = 0; i < 85 * 25 * 2; i += 2) {
    videoMemory[i] = 0;
    videoMemory[i + 1] = 0x0A;

    i += 2;
  }
}
