// provider.dart

class Donor {
  String email;
  String password;

  Donor({
    required this.email,
    required this.password,
  });

  static List<Donor> getAllDonors() {
    return [
      Donor(email: 'Khalid.1@gmail.com', password: 'Kh112211'),
      Donor(email: 'Ahmed67@gmail.com', password: 'Ahmedd67'),
      Donor(email: 'Sul.22@gmail.com', password: 'Sul2222'),
      Donor(email: 'Sh.ed@gmail.com', password: '1234'),
      Donor(email: 'Mmuteabb@gmail.com', password: 'MmBb77'),
      Donor(email: 'YA3553@gmail.com', password: 'YARA3553'),
      Donor(email: 'Alham95@gmail.com', password: 'Alhamm95'),
      Donor(email: 'Rror44@gmail.com', password: 'Rooro4'),
      Donor(email: 'Sa_22@gmail.com', password: 'Ssaadd22'),
      Donor(email: 'Ali-991@gmail.com', password: 'Aa991'),
      Donor(email: 'Salem23@gmail.com', password: 'Salem1234'),
      Donor(email: 'Amani87@gmail.com', password: 'Amani1987'),
      Donor(email: 'Fahad55@gmail.com', password: 'Fahad5555'),
      Donor(email: 'Rania92@gmail.com', password: 'Rania1992'),
      Donor(email: 'Yousef66@gmail.com', password: 'Yousef6666'),
      Donor(email: 'Sara11@gmail.com', password: 'Sara12345'),
      Donor(email: 'Omar33@gmail.com', password: 'Omar3333'),
      Donor(email: 'Laila99@gmail.com', password: 'Laila1999'),
      Donor(email: 'Nasser77@gmail.com', password: 'Nasser7777'),
      Donor(email: 'Mona88@gmail.com', password: 'Mona1988'),
    ];
  }
}

class Beneficiary {
  String name;
  String id;

  Beneficiary({
    required this.name,
    required this.id,
  });

  static List<Beneficiary> getAllBeneficiaries() {
    return [
      Beneficiary(name: 'Khaled Mohammed', id: '1173765331'),
      Beneficiary(name: 'Ahmed Sultan', id: '1018284577'),
      Beneficiary(name: 'Sultan Khalid', id: '1113224541'),
      Beneficiary(name: 'Shahed Azzam', id: '1134376799'),
      Beneficiary(name: 'Muteab Ali', id: '1115543420'),
      Beneficiary(name: 'Yara Ahmed', id: '1117273451'),
      Beneficiary(name: 'Alham Nawaf', id: '1154566210'),
      Beneficiary(name: 'Rowan Muhand', id: '1114247897'),
      Beneficiary(name: 'Saad Khaled', id: '1134366781'),
      Beneficiary(name: 'Ali Masoud', id: '1117275422'),
      Beneficiary(name: 'Mohammed Abdullah', id: '1012345671'),
      Beneficiary(name: 'Reem Hamad', id: '1023456782'),
      Beneficiary(name: 'Saad Fahad', id: '1034567893'),
      Beneficiary(name: 'Nada Saleh', id: '1045678914'),
      Beneficiary(name: 'Abdulrahman Khalid', id: '1056789125'),
      Beneficiary(name: 'Khalid Mohammed', id: '1067891236'),
      Beneficiary(name: 'Yasmeen Ali', id: '1078912347'),
      Beneficiary(name: 'Abdullah Faisal', id: '1089123458'),
      Beneficiary(name: 'Khadija Abdullah', id: '1091234569'),
      Beneficiary(name: 'Ibrahim Youssef', id: '1102345670'),
    ];
  }
}