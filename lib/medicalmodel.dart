class MedicalModel {
  final String medication;
  final String time;
  final String monthRem;
  final String drname;
  final String appointment;
  final String documets;
  MedicalModel(
      {this.medication,
      this.appointment,
      this.documets,
      this.drname,
      this.monthRem,
      this.time});
}

List<MedicalModel> jsonData = [
  MedicalModel(
      medication: "Bilastine 20mg",
      time: "8:00 am",
      monthRem: "1 month remaining",
      drname: "Dr. GS rathore",
      appointment: "No Appointment",
      documets: "1 Document"),
  MedicalModel(
      medication: "Paracetamol",
      time: "10:00 am",
      monthRem: "11 month remaining",
      drname: "Dr. Vk Sharma",
      appointment: "Appointment",
      documets: "1 Document"),
  MedicalModel(
      medication: "Azithromycine",
      time: "11:00 am",
      monthRem: "10 month remaining",
      drname: "Dr. Shilpa Sharma",
      appointment: "No Appointment",
      documets: "1 Document"),
  MedicalModel(
      medication: "Nozee 50mg",
      time: "01:00 pm",
      monthRem: "12 month remaining",
      drname: "Dr. AS Chauhan",
      appointment: "Appointment",
      documets: "1 Document"),
  MedicalModel(
      medication: "Sinarest 50mg",
      time: "3:00 pm",
      monthRem: "8 month remaining",
      drname: "Dr. Kk batra",
      appointment: "No Appointment",
      documets: "1 Document"),
];
