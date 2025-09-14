class Experience {
  final String title;
  final String company;
  final String period;
  final String location;
  final List<ExperienceDesc> experienceDescs; // List<ExperienceDesc
  Experience({
    required this.title,
    required this.company,
    required this.period,
    required this.experienceDescs,
    required this.location,
  });
}

class ExperienceDesc {
  String title;
  List<String> descs;

  ExperienceDesc({required this.title, required this.descs});
}

List<Experience> myExperience = [
  Experience(
    title: 'FLUTTER DEVELOPER',
    company: 'Storeak',
    period: '2020-12-11 - 2021-11-01',
    location: 'Baghdad Iraq',
    experienceDescs: [
      ExperienceDesc(
        title:
            'Developed cross-platform mobile applications for iOS and Android using Flutter.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Ensured high-quality code through comprehensive testing and debugging.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Collaborated with QA, Design, and Product Management teams to enhance UX.',
        descs: [],
      ),
      ExperienceDesc(
        title: 'Implemented complex UI animations to improve user engagement.',
        descs: [],
      ),
      ExperienceDesc(
        title: 'Focused on information security and optimized app performance.',
        descs: [],
      ),
    ],
  ),
  Experience(
    title: 'FLUTTER DEVELOPER',
    company: 'Faya Dev',
    period: '2021-11-11 - 2022-11-10',
    location: 'Baghdad Iraq',
    experienceDescs: [
      ExperienceDesc(
        title:
            'Built and maintained iOS and Android mobile applications with a focus on scalability.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Conducted thorough code reviews and unit testing to ensure robust app performance.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Worked with design teams to implement user-friendly interfaces.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Managed app lifecycle with attention to data security and process optimization.',
        descs: [],
      ),
    ],
  ),
  Experience(
    title: 'SENIOR FLUTTER DEVELOPER',
    company: 'Unifi Solutions',
    period: '2021-12-13 - Present',
    location: 'Montreal Canada',
    experienceDescs: [
      ExperienceDesc(
        title:
            'Spearheaded the development of multiple cross-platform mobile apps for iOS and Android.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Enhanced user experience by analyzing user data and implementing effective UX strategies.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Collaborated with cross-functional teams to address and resolve complex technical issues.',
        descs: [],
      ),
      ExperienceDesc(
        title:
            'Emphasized code quality, security, and scalability throughout the app lifecycle.',
        descs: [],
      ),
    ],
  ),
].reversed.toList();
