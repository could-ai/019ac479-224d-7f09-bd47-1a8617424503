import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/job.dart';
import 'package:couldai_user_app/screens/job_details_screen.dart';
import 'package:couldai_user_app/widgets/job_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Job> _jobs = [
    Job(
      title: 'Flutter Developer',
      company: 'Tech Solutions Inc.',
      location: 'Latur, Maharashtra',
      description: 'We are looking for an experienced Flutter developer to join our team. You will be responsible for developing high-quality mobile applications for iOS and Android.',
    ),
    Job(
      title: 'Marketing Manager',
      company: 'Creative Minds',
      location: 'Latur, Maharashtra',
      description: 'Creative Minds is seeking a Marketing Manager to lead our marketing efforts. The ideal candidate will have a strong background in digital marketing and campaign management.',
    ),
    Job(
      title: 'Accountant',
      company: 'Finance Experts',
      location: 'Latur, Maharashtra',
      description: 'We are hiring an Accountant to manage all financial transactions, from fixed payments and variable expenses to bank deposits and budgets.',
    ),
     Job(
      title: 'Sales Executive',
      company: 'Global Innovations',
      location: 'Latur, Maharashtra',
      description: 'We are looking for a competitive and trustworthy Sales Executive to help us build up our business activities.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latur Jobs'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: _jobs.length,
        itemBuilder: (context, index) {
          return JobListItem(
            job: _jobs[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JobDetailsScreen(job: _jobs[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/post-job');
        },
        tooltip: 'Post Job',
        child: const Icon(Icons.add),
      ),
    );
  }
}
