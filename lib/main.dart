import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/cubits/pokemon/pokemon_cubit.dart';
import 'package:pokedex/repositories/pokemon_gq_repository.dart';
import 'package:pokedex/routes.dart';
import 'package:pokedex/ui/widgets/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PokemonCubit>(
          create: (_) => PokemonCubit(PokemonGqRepository()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.themeData,
        routes: Routes.routes,
        initialRoute: Routes.home,
      ),
    );
  }
}
