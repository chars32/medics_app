import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hola',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Doctor Carlos Garcia',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.person_2_rounded)
                ],
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Tus numeros'),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _CardNumber(
                          size: size,
                          count: 3,
                          title: 'Citas para hoy',
                        ),
                        _CardNumber(
                          size: size,
                          count: 4,
                          title: 'Total de citas',
                        ),
                        _CardNumber(
                          size: size,
                          count: 5,
                          title: 'Pacientes',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SizedBox(
                width: size.width,
                child: const Text('Citas para hoy'),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        _CardSchedules(size: size),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CardNumber extends StatelessWidget {
  final Size size;
  final int count;
  final String title;

  const _CardNumber({
    required this.size,
    required this.count,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: size.height * 0.15,
        width: size.width * 0.27,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}

class _CardSchedules extends StatelessWidget {
  const _CardSchedules({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Cita'),
              Icon(Icons.schedule_rounded),
            ],
          ),
          content: SizedBox(
              width: size.width,
              height: size.width * 0.5,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Patient name',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Servicio'),
                      SizedBox(width: 40),
                      Text(
                        'servicio 1',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fecha'),
                      SizedBox(width: 40),
                      Text(
                        '09-Oct-2023',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hora'),
                      SizedBox(width: 40),
                      Text(
                        '01:40 PM - 03:00 PM',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              )),
        ),
      ),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.green),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Text(
                  'Vigente',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.2,
                  child: const Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Patient',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Servicio'),
                          SizedBox(width: 40),
                          Text(
                            'servicio 1',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Fecha'),
                          SizedBox(width: 40),
                          Text(
                            '09-Oct-2023',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hora'),
                          SizedBox(width: 40),
                          Text(
                            '01:40 PM - 03:00 PM',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
