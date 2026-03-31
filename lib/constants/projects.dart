import 'package:portafolio_carlos/models/projects.dart';


final List<Projects> projects = [
  const Projects(
    image: 'portafolio.png',
    title: 'Portafolio Website',
    description:
        'Este portafolio web ha sido desarrollado íntegramente con Flutter y Dart. Se trata de un sitio de una sola página (Single Page Application) diseñado para exhibir mi trayectoria y proyectos como desarrollador de aplicaciones móviles.',
    builtWith: [
      'Dart',
      'Flutter',
      'Material UI',
      'Figma'
    ],
    link: 'https://github.com/prabeshpudasaini/Portfolio',
  ),
  const Projects(
    image: 'ecommerce.png',
    title: 'Ecommerce App',
    description:
        'Aplicación móvil desarrollada con Flutter centrada en la experiencia de usuario. Implementamos un catálogo dinámico de prendas de marca, con navegación fluida, filtrado de categorías y una interfaz moderna optimizada para dispositivos Android y iOS.',
    builtWith: [
      'Dart',
      'Flutter',
      'Firebase',
      'Material UI',
    ],
    link: 'https://github.com/prabeshpudasaini/e2ee_chat',
  ),
  const Projects(
    image: 'delivery.png',
    title: 'Delivery App',
    description:
        'Aplicación de delivery diseñada para los amantes de la pizza. Desarrollamos una interfaz intuitiva con un menú visualmente atractivo, donde los usuarios pueden explorar diferentes variedades, ver ingredientes a detalle y disfrutar de una navegación fluida optimizada para móviles',
    builtWith: [
      'Dart',
      'Flutter',
      'Firebase',
      'Material UI',
    ],
    link: 'https://github.com/prabeshpudasaini/Document_Sharing_App',
  ),
];