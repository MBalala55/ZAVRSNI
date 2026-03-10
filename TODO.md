# FAZA 1: Model podataka i osnovna struktura
Cilj: Definirati kako sustav "vidi" hranu, piće i narudžbu.

[ ] 1.1. Definiranje strukture digitalnog jelovnika: Izrada sheme (npr. JSON) koja sadrži nazive, cijene, opise, kategorije te moguće varijante (veličine) i dodatke (priloge) artikala.

[ ] 1.2. Uspostava lokalnog poslužitelja: Postavljanje okruženja koje može primati upite i slati podatke o jelovniku prema klijentu.

[ ] 1.3. Definiranje objekta "Narudžba": Određivanje skupa podataka koji čine jednu narudžbu (ID stola, popis stavki s njihovim specifičnim dodacima, ukupna cijena, status i točno vrijeme).

# FAZA 2: Razvoj sučelja za gosta
Cilj: Omogućiti korisniku pregled ponude i sastavljanje narudžbe.

[ ] 2.1. Dinamički dohvat jelovnika: Implementacija logike koja pri otvaranju aplikacije učitava podatke o artiklima.

[ ] 2.2. Sustav filtriranja i navigacije: Omogućiti gostu brzo prebacivanje između kategorija (npr. jela, pića, deserti).

[ ] 2.3. Logika izbora dodataka i varijanti: Izrada sustava u kojem korisnik može personalizirati artikl (npr. odabir stupnja pečenja mesa ili dodavanje priloga).

[ ] 2.4. Upravljanje košaricom: Razvoj mehanizma koji privremeno čuva odabrane stavke, računa ukupni iznos i dopušta izmjene prije finalnog slanja.

# FAZA 3: Komunikacija u stvarnom vremenu
Cilj: Osigurati trenutnu razmjenu informacija između gosta i osoblja.

[ ] 3.1. Uspostava dvosmjernog kanala (Real-time): Postavljanje tehnologije koja omogućuje serveru da "gurne" (push) informaciju klijentu čim se ona dogodi.

[ ] 3.2. Slanje narudžbe: Implementacija funkcije koja šalje kompletnu košaricu sustavu osoblja uz potvrdu primitka.

[ ] 3.3. Praćenje statusa: Izrada sučelja koje gostu u stvarnom vremenu prikazuje u kojoj je fazi njegova narudžba (npr. Primljeno -> U pripremi -> Posluženo).

# FAZA 4: Sučelje za osoblje (Kuhinja i Konobari)
Cilj: Upravljanje procesom pripreme i naplate.

[ ] 4.1. Centralni sustav za prikaz narudžbi: Izrada pregleda u kojem se nove narudžbe pojavljuju kronološki kao zasebni nalozi ("tiketi").

[ ] 4.2. Upravljanje životnim ciklusom narudžbe: Implementacija kontrola kojima osoblje mijenja stanja narudžbe (npr. označavanje da je jelo spremno za iznošenje).

[ ] 4.3. Sustav obavijesti za naplatu: Izrada posebnog kanala za hitne zahtjeve gosta (poziv konobara ili zahtjev za računom).

[ ] 4.4. Arhiviranje i završetak sesije: Logika koja nakon potvrđene naplate miče narudžbu s aktivne liste.

# FAZA 5: Završna integracija i dokumentacija
Cilj: Povezivanje cjelina i pisanje rada.

[ ] 5.1. Testiranje protoka podataka: Provjera sinkronizacije (npr. mijenja li se status kod gosta iste sekunde kad konobar pritisne gumb).

[ ] 5.2. Responzivnost i prilagodba ekranima: Osigurati da je sučelje gosta optimizirano za mobitele, a sučelje osoblja za veće ekrane (tablete/laptop).

[ ] 5.3. Pisanje teorijskog dijela rada: Analiza tržišta, opis arhitekture i dokumentiranje procesa razvoja.
