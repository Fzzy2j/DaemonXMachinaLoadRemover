state("DXM-Win64-Shipping") {
	int loading1 : "DXM-Win64-Shipping.exe", 0x0459A568, 0x180, 0x1B0, 0x20, 0x80, 0xAE8, 0x368, 0x8; // 3 on loading screens 2 during gameplay
	int loading2 : "DXM-Win64-Shipping.exe", 0x04607E18, 0x0, 0x7D0; // 1065353216 during gameplay
}

isLoading {
	return current.loading2 != 1065353216 && current.loading1 != 2;
}
