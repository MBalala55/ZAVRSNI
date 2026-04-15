CREATE TABLE Korisnik
(
  id_korisnika SERIAL,
  ime VARCHAR(50) NOT NULL,
  prezime VARCHAR(50) NOT NULL,
  korisnicko_ime VARCHAR(30) NOT NULL,
  lozinka VARCHAR(255) NOT NULL,
  uloga VARCHAR(20) NOT NULL,
  CONSTRAINT pk_korisnik PRIMARY KEY (id_korisnika),
  CONSTRAINT uq_korisnicko_ime UNIQUE (korisnicko_ime)
);

CREATE TABLE Stol
(
  id_stola SERIAL,
  oznaka_stola VARCHAR(10) NOT NULL,
  qr_token VARCHAR(100) NOT NULL,
  CONSTRAINT pk_stol PRIMARY KEY (id_stola),
  CONSTRAINT uq_oznaka_stola UNIQUE (oznaka_stola),
  CONSTRAINT uq_qr_token UNIQUE (qr_token)
);

CREATE TABLE Sesija
(
  id_sesije SERIAL,
  gost_token VARCHAR(255) NOT NULL,
  vrijeme_dolaska TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  aktivna BOOLEAN NOT NULL DEFAULT TRUE,
  id_stola INT NOT NULL,
  CONSTRAINT pk_sesija PRIMARY KEY (id_sesije),
  CONSTRAINT fk_sesija_stol FOREIGN KEY (id_stola) REFERENCES Stol(id_stola),
  CONSTRAINT uq_gost_token UNIQUE (gost_token)
);

CREATE TABLE Narudzba
(
  id_narudzbe SERIAL,
  status VARCHAR(20) NOT NULL,
  stavke JSONB NOT NULL,
  ukupna_cijena DECIMAL(10,2) NOT NULL,
  vrijeme_narudzbe TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  vrijeme_izmjene TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  id_sesije INT NOT NULL,
  id_korisnika INT,
  CONSTRAINT pk_narudzba PRIMARY KEY (id_narudzbe),
  CONSTRAINT fk_narudzba_sesija FOREIGN KEY (id_sesije) REFERENCES Sesija(id_sesije),
  CONSTRAINT fk_narudzba_korisnik FOREIGN KEY (id_korisnika) REFERENCES Korisnik(id_korisnika)
);