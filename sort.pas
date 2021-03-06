unit sort;

interface
	uses tipe;
	procedure sortBahanMentah(var arr: array of tipe.bahan_mentah);
	procedure sortHasilOlah(var arr: array of hasil_olah);
	procedure sortIsiInventori(var arr: array of isi_inventori);

implementation
	procedure sortBahanMentah(var arr: array of bahan_mentah);
	//Mengurutkan array of bahan_mentah
	//I.S: arr terdefinisi
	//F.S: arr terurut secara alfabetik berdasarkan nama
	var
		i: integer;
		sorted: boolean;
		temp: bahan_mentah;	
	begin
		sorted := False;
		while(sorted <> True) do 
		begin
			sorted := True;
			i := 1;
			while(arr[i+1].nama <> '') do
			begin
				if(arr[i+1].nama < arr[i].nama) then
				begin
					sorted := false;
					temp := arr[i];
					arr[i] := arr[i+1];
					arr[i+1] := temp;
				end;
				i += 1;
			end;
		end;
	end;
	procedure sortHasilOlah(var arr: array of hasil_olah);
	//Mengurutkan array of hasil_olah
	//I.S: arr terdefinisi
	//F.S: arr terurut secara alfabetik berdasarkan nama
	var
		i: integer;
		sorted: boolean;
		temp: hasil_olah;
	begin
		sorted := False;
		while(sorted <> True) do 
		begin
			sorted := True;
			i := 0;
			while(arr[i+1].nama <> '') do
			begin
				if(arr[i+1].nama < arr[i].nama) then
				begin
					sorted := false;
					temp := arr[i];
					arr[i] := arr[i+1];
					arr[i+1] := temp;
				end;
				i += 1;
			end;
		end;
	end;
	procedure sortIsiInventori(var arr: array of isi_inventori);
	//Mengurutkan array of isi_inventori
	//I.S: arr terdefinisi
	//F.S: arr terurut secara alfabetik berdasarkan nama
	var
		i: integer;
		sorted: boolean;
		temp : isi_inventori;
	begin
		sorted := False;
		while(sorted <> True) do 
		begin
			sorted := True;
			i := 0;
			while(arr[i+1].nama <> '') do
			begin
				if(arr[i+1].nama < arr[i].nama) then
				begin
					sorted := false;
					temp := arr[i];
					arr[i] := arr[i+1];
					arr[i+1] := temp;
				end;
				i += 1;
			end;
		end;
	end;

end.