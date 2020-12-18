state("DXM-Win64-Shipping") {
	int loading : "DXM-Win64-Shipping.exe", 0x045FD778, 0x18, 0x40, 0x34C, 0x20, 0x270, 0x228, 0xFA8; // 3 on loading screens 2 during gameplay
}

isLoading {
	return current.loading == 3;
}
