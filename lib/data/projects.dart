import 'package:flutter/cupertino.dart';
import 'package:salem_portfolio/gen/assets.gen.dart';

class Project {
  String name, desc;
  List<Image> photos;
  List<String>? stack;
  String? github, googlePlay, appStore;
  String? downloads;

  Project(
      {required this.name,
      required this.desc,
      this.github,
      this.appStore,
      this.googlePlay,
      this.photos = const [],
      this.stack,
      this.downloads});
}

List<Project> myProjects = [
  Project(
      name: "Chilliwack pharmacy",
      desc:
          'As part of our efforts to promote healthy living, Chilliwack Pharmacy is proud to offer an Android smartphone app. The app allows you to manage your prescription file and order your prescriptions quickly and easily using your Android device. Keep your prescription file handy anytime you need it. In the ER, the clinic, or anywhere! Features: Quick Refills: Create your own prescription templates by entering your phone number and prescription number(s). 24/7 Ordering Capability. Order from anywhere, including while on vacation.',
      stack: ['Flutter', 'Kotlin', 'Alarm manager', 'Firebase messaging'],
      appStore:
          'https://apps.apple.com/ca/app/chilliwack-pharmacy/id1582705690',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.chilliwackpharmacy.app',
      photos: [Assets.projects.chilliwack.image()]),
  Project(
      name: "AWS BAZAR",
      downloads: '50K',
      desc:
          'AWS BAZAR ecommerce platform to provide high-quality products related to cosmetic, health & beauty brands',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.iraqsoft.awsbazar&hl=en',
      appStore: 'https://apps.apple.com/us/app/aws-bazar/id1454956797',
      photos: [Assets.projects.awsBazar.image()]),
  Project(
      name: "O3 Ozoon",
      downloads: '100k',
      desc:
          'Specialized in selling high quality men\'s clothing from the finest international originators Very competitive price .. We guarantee the quality of our products to ensure that we use the finest fabrics, threads and leather in our products The Agency was opened on 1/7/2012.',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.Tatweer.o3&hl=en',
      appStore: 'https://apps.apple.com/us/app/o3-ozoon/id1329199800',
      photos: [Assets.projects.ozoon.image()]),
  Project(
      name: 'Al-Futtaim - Field App ',
      photos: [
        Assets.projects.alfuttaim.image(),
      ],
      stack: [
        'Flutter',
        'Offline Mode',
        'http cache',
        'auto sync',
      ],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.afcomms.technician&hl=en',
      appStore:
          'https://apps.apple.com/eg/app/al-futtaim-field-app/id6475766794',
      desc: '''
Introducing Al-Futtaim Technician—the mobile arm of our cutting-edge CAFM platform. Tailored for technicians in the field, this app brings the power of Al-Futtaim to your fingertips, ensuring that your on-site operations are streamlined, error-free, and equipped for success.


Key Features:


Work Order Mastery:


View, edit, and submit work orders with intuitive and prioritized task details.

Real-time updates keep you informed about task progress and changes.

Raise work orders on-the-go or quickly initiate them from predefined templates.

Asset-Centric Efficiency:


Utilize the integrated QR code scanner to identify and initiate work orders associated with assets.

Minimize errors with instant QR code scanning, ensuring accurate maintenance records.

Comprehensive Work Order Execution:


Complete detailed checklists for thorough task execution.

Record precise asset measurements, aiding in future maintenance planning.

Attach before-and-after photos, providing visual documentation of task completion.

Upload essential documents, centralizing information for easy accessibility.

Performance Insights & Team Connectivity:


Review individual work order history for performance insights.

Access team details for seamless collaboration and communication, even in the field.

Stay updated on shift details, promoting efficient time management.

Barcode Scanning:


Scan QR codes to quickly access associated asset information.

Effortlessly associate unrecognized QR codes with existing equipment.


Time Tracking:


Start and stop the built-in timer for accurate time tracking.

Round times to the nearest minute, ensuring precise reporting.

Search Anything Feature:


Quickly find work orders and assets with the search bar.

Enhance efficiency by accessing information swiftly.

Notifications:


Receive instant notifications when assigned to a work order.

Stay informed about open work orders with active time trackers.

Al-Futtaim Technician redefines the way your technicians interact with facility management tasks. From work order initiation to performance analysis, this app is your go-to solution for elevating on-site efficiency, accuracy, and accountability.
    '''),
  Project(
      name: "Alef iot",
      desc: '''
Alef IoT is your comprehensive solution for real-time monitoring and management of facilities, assets, utilities, and personnel. Harnessing the power of the Internet of Things, our
dynamic cloud platform and user-friendly mobile applications bring critical data to your fingertips.
Whether you're managing residential/commercial properties, industrial equipment, warehouses,
public infrastructure, monitoring utility consumption, or tracking assets and personnel, Alef IoT
delivers unparalleled visibility and empowers you to make informed decisions with ease.
Designed for seamless interoperability, the Alef IoT integrates a suite of powerful applications,
including Ignite Shield, Ignite Meter, and Asset Watch, to maximize the potential of IoT for
comprehensive monitoring and management.

Key Highlights:
-Ignite Shield:
• Real-Time Monitoring & Insights: Stay updated with live data on various
assets and
environmental factors. Monitor key parameters like air quality, water
quality, noise levels, and
equipment temperature and vibration with accuracy and ease.
• Customizable Alarm Templates: Set up personalized alarms and
notifications. Define
thresholds for monitored parameters and get alerts for any deviations,
ensuring timely
responses to critical conditions.
• Alarm Management & Acknowledgment: Efficiently manage and respond
to alarms.
Acknowledge notifications, keep track of responses, and maintain logs
for in-depth analysis
and record-keeping.
• Historical Data for Trend Analysis: Utilize comprehensive historical data
to gain insights into
asset performance and environmental trends. Use this information for
predictive maintenance
and strategic decision-making.
-Ignite Meter:
• Utility Consumption Monitoring: Monitor and analyze the consumption of
utilities such as
electricity, water, and gas. Gain detailed insights into usage patterns and
identify opportunities
for cost savings.
• Real-Time Data: Access live data on utility consumption to manage
resources efficiently and
reduce waste.
• Custom Alerts: Set custom alerts for unusual consumption patterns or
thresholds to take
proactive measures.
• Historical Data Analysis: Review historical consumption data to identify
trends, optimize
usage, and plan for future needs.
-Asset Watch:
• Indoor/Outdoor Asset Tracking: Track the location of assets and
personnel in real-time, both
indoors and outdoors, to ensure security and operational efficiency.
• Geofencing & Alerts: Set up geofences and receive alerts when assets or
personnel enter or
leave designated areas.
• Historical Location Data: Access historical tracking data to analyze
movement patterns and
optimize asset usage and personnel deployment.
• Safety & Compliance: Enhance safety and compliance by monitoring the
location and status of critical assets and personnel.

Alef IoT is more than an app – it's an integral tool in your IoT ecosystem. Download now and harness
the power of IoT for smarter, more efficient asset, environmental, utility, and personnel management.
          ''',
      stack: [
        'Flutter',
        'Firebase',
      ],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.alefIoT&hl=en',
      appStore: 'https://apps.apple.com/us/app/alef-iot/id6468443325?uo=2',
      photos: [Assets.projects.alef.image()]),
  Project(
      name: "X.eMAR",
      downloads: '10+',
      desc:
          'X.eMAR is a powerful and intuitive electronic Medication Administration Record system designed to streamline medication management for healthcare providers. With secure access to real-time data, X.eMAR ensures accurate medication tracking, enhances patient safety, and reduces the risk of errors.\n \n Key Features:        Medication Tracking: Record, monitor, and verify administered medications. Real-Time Updates: Instant access to medication schedules and patient data. User-Friendly Interface: Simplified workflows for nurses and caregivers. Secure Data Management: Compliant with healthcare regulations to protect sensitive information. X.eMAR supports healthcare facilities in delivering the best patient care through enhanced medication safety and operational efficiency.',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.xemar.app&hl=en',
      appStore: 'https://apps.apple.com/ca/app/x-emar/id6737589888',
      photos: [Assets.projects.emar.image()]),
  Project(
      name: "Ignite Shield",
      downloads: '100+',
      desc:
          'Ignite Shield Mobile App Description for PlayStore & AppStore: A Full-Stack IoT Solution for Monitoring Air and Water Quality from a Single Asset to a City Level. Conveniently Monitor your Air Quality, Indoor or Outdoor and Water Quality in your Pools, Spa, and Water Tank through an IoT Cloud Platform and Mobile App. Ignite Shield IoT Cloud Solutions for Air and Water Quality Monitoring: ● Indoor Air Quality Monitoring: Monitor Temperature, Humidity, CO2, TVOC or PM2.5/10 levels in your Indoor Air conveniently through IoT Cloud Platform or Mobile App. This solution includes a Sigfox device with a long Battery Life and Sensor Life of 5 years.  Outdoor Air Quality Monitoring: Monitor up to 29 sensors outdoors with our Weather Station. ● Swimming Pool Monitoring, SPA Monitoring, Water Tank Monitoring: Monitor Temperature, pH, ORP, TDS, Salinity, Conductivity, Free Chlorine Sensor Levels Conveniently through IoT Cloud Platform or Mobile App. This solution includes a Sigfox device with a long Battery Life and Sensor Life of 2 years.  Water Pressure Monitoring: Monitor Water Pressure in your Water Infrastructure using this IoT Solution. The device can be used for utility and industrial pipe networks or for level measurement in tanks and reservoirs. This IoT Solution includes a device that measures and sends the Water Pressure data at regular intervals, and uses Sigfox connectivity for data transmission. The All-in-one Ignite Shield Application is loaded with features:  Monitor your Air and Water Sensors Levels through a Single App!  View IoT Device Status. Location, Battery Levels, Sensors, Logs and much more!  Get real-time notification if sensor levels are not in preferred ranges.  View alarms and escalate to higher authorities if required. If you are an existing customer, download the IgniteShield Application and login to start monitoring your solutions. If you are a new user interested in our IoT Solutions, visit https://cloud.disrupt-x.io/global/core/products-and-orders/main',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.ignite_shield&hl=en&gl=US',
      appStore: 'https://apps.apple.com/in/app/ignite-shield/id1565522300',
      photos: [Assets.projects.shield.image()]),
  Project(
      name: "Ignite Meter",
      downloads: '10+',
      desc:
          'Gas Meter Will Monitor Gas in m3 unit. This IoT Device Measures and Sends the Gas Data Once Every Day, And Uses Sigfox Connectivity for Data Transmission. The Solution Will Help You In Monitoring Gas By Sending You Alerts If The Sensor Level is Not In The Preferred Range, Build Custom Reports And Use AI Based Technology To Show You Recommendations Based On Your Gas Readings.  > Monitor Gas Meter Readings Conveniently through our Mobile App > Role-based Access for Company Users > View Device Status, Alarms & Notifications  > Get Alerts on abnormal readings with recommendations',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.igniteMeter&hl=en&gl=US',
      appStore: 'https://apps.apple.com/in/app/ignite-shield/id1565522300',
      photos: [Assets.projects.meter.image()]),
  Project(
      name: "Rodent",
      downloads: '10+',
      desc:
          'Disrupt-Xs IoT solution for monitoring rodent infestation in premises and rat traps using PIR sensors for effective management of facilities. The responder mobile application for rodent monitoring will enable exterminators to:\n- View their tasks (To-do and completed) \n- Mark their tasks as completed \n- View the locations where servicing is required \n - Upload a picture to verify the task has been completed \n - Communicate with operators via the app if required',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.rodent&hl=en&gl=US',
      appStore: 'https://apps.apple.com/in/app/rodent/id6444051941',
      photos: [Assets.projects.rodent.image()]),
  Project(
      name: "Smart Drive Captain",
      downloads: '5+',
      desc:
          'Smart Drive platform to assist in managing fleet through real-time tracking, route optimization, vehicle jobs management, and constant vehicle health monitoring.\nThe platform will enable you to monitor fleet status with real-time tracking.\nView vehicle health status, assign jobs, and much more. The main highlights include real-time tracking of the fleet, monitoring fleet health status, assigning jobs to the fleet, route planning, and optimization, real-time alerts and notification, custom reports, and a dashboard.',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.alfuttaim.smartDriveCaptain&hl=en&gl=US',
      appStore: 'https://apps.apple.com/in/app/technex-captain/id6444051838',
      photos: [Assets.projects.smart_drive.image()]),
  Project(
      name: "Alef IoT TechNex Captain",
      downloads: '1+',
      desc:
          'Fleet management platform to assist in managing fleet through real-time tracking, route optimization, vehicle jobs management, and constant vehicle health monitoring. The platform will enable you to monitor fleet status with real-time tracking. View vehicle health status, assign jobs, and much more. The main highlights include real-time tracking of the fleet, monitoring fleet health status, assigning jobs to the fleet, route planning, and optimization, real-time alerts and notification, custom reports, and a dashboard.',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.alefIoT.techNexCaptain&hl=en&gl=US',
      photos: [Assets.projects.te.image()]),
  Project(
      name: "Asset Watch",
      downloads: '10+',
      desc:
          'Asset Watch is a real-time asset tracking and management system that can be used to track assets indoors and outdoors. It is a powerful tool that can help you keep tabs on everything that matters to you, from people to vehicles and more. Here are the main features of Asset Watch: Real-time tracking: Asset Watch allows you to track the location of your assets in real time. Indoor and outdoor tracking: Asset Watch can track assets indoors and outdoors.\n Alarm configurations: Asset Watch allows you to set up alarms for your assets. which mean you will notified if your assets move outside of a specified area or if they are tampered with. Asset management: Asset Watch allows you to manage your assets. This includes the ability to track the history of your assets, create reports, and manage geofences. Asset Watch is a powerful tool that can help you keep track of your assets and improve your business operations. If you are looking for a way to track your assets in real time, Asset Watch is a great option.',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.assetWatch&hl=en&gl=US',
      appStore:
          'https://apps.apple.com/in/app/disrupt-x-asset-watch/id6464405085',
      photos: [Assets.projects.asset_watch.image()]),
  Project(
      name: "Metrowatch",
      downloads: '100+',
      desc:
          'A Full-Stack IoT Solution for Securing your Assets Efficiently. Metro Watch Solution offers Smart Padlocks and Smart Parking Solutions to Secure and Manage your Assets using an IoT Cloud Platform and Mobile App.',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.metrowatch&hl=en&gl=US',
      appStore: 'https://apps.apple.com/in/app/metro-watch/id1580122520',
      photos: [Assets.projects.metro.image()]),
  Project(
      name: "Defcon Patrols",
      downloads: '100+',
      desc:
          'Intrusion Alarm Services Get Alarms on Intrusion from Intrusion Sensors through Disrupt-X IoT Platform and Mobile App\nCentralized Remote Monitoring\nSecurity Companies can monitor all client’s intrusion activity and assign responder immediately if required.\nMulti-Level Escalation \nEscalate true intrusion alarms by assigning responders or escalation to police stations nearby.\n WhatsApp/Email/SMS Alerts Customize alarm groups to receive selected alarms via WhatsApp/Email/SMS',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.defcon&hl=en&gl=US',
      appStore: 'https://apps.apple.com/in/app/defcon-patrols/id1597468557',
      photos: [Assets.projects.defcon.image()]),
  Project(
      name: "Cognitive Neuron",
      downloads: '100+',
      desc:
          'Cognitive Neuron’s mobile application supplements Disrupt-X’s AI based solution for automatic number plate recognition for residential use cases. It allows building and community owners as well as residents to conveniently manage access to their parking lots.\nThrough the mobile application users will be able to\n1. Manage resident vehicles and specify the duration of access\n2. Residents can manage access for visitor vehicles without the need to manually notify building or community security\n\n3. Users will be able to view the access list to know who is granted access to the parking\n4. View vehicle logs in real-time and historically to know when vehicles have entered and exited',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.disruptX.cognitiveNeuron&hl=en&gl=US',
      photos: [Assets.projects.neu.image()]),
  Project(
      name: "Shaheen",
      downloads: '50+',
      desc:
          'Shaheen, your all-inclusive online platform catering to the diverse needs of the equestrian and veterinary community. With a rich legacy spanning decades, our affiliated entities - AL AWANI General Enterprises, Gulf Rider, and Shahin Veterinary Laboratories - have been steadfast in providing unparalleled products and services Shaheen, embodies the commitment to excellence and innovation. Seamlessly merging the expertise of Al Awani, Gulf Rider, and Shahin Veterinary Laboratories, into Shaheen online portal, which offers a comprehensive range of equine products, veterinary medicines, supplements, and diagnostic services. A New way of support to all sorts of veterinary and equine needs at Shaheen, where convenience meets quality. Whether you are a stable manager, veterinarian, rider, or pet owner, our platform caters to all your needs under one virtual roof. From state-of-the-art tack items to cutting-edge veterinary treatments, Shaheen ensures that you have access to the best-in-class products and services. Experience the future of equestrian and veterinary care with Shaheen - your trusted partner in nurturing the well-being of your beloved animals.',
      stack: ['Flutter'],
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.shaheen&hl=en&gl=US',
      photos: [Assets.projects.shaheen.image()]),
];
