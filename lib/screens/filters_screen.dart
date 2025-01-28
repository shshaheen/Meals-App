import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/providers/filter_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});
  // const FiltersScreen({super.key});

  // var _glutenFreeFilterSet = false;
  // var _lactoseFreeFilterSet = false;
  // var _vegetarianFilterSet = false;
  // var _veganFilterSet = false;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    // _glutenFreeFilterSet = activeFilters[Filter.glutenFree]!;
    // _lactoseFreeFilterSet = activeFilters[Filter.lactoseFree]!;
    // _vegetarianFilterSet = activeFilters[Filter.vegetarian]!;
    // _veganFilterSet = activeFilters[Filter.vegan]!;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if (identifier == 'Meals') {
      //     Navigator.of(context)
      //         .push(MaterialPageRoute(builder: (context) => TabsScreen()));
      //   }
      // }),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (isActive) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isActive);
            },
            title: Text(
              'Gluten-free',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include gluten-free meals.',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            onChanged: (isActive) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isActive);
            },
            title: Text(
              'Lactose-free',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include lactose-free meals.',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isActive) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegetarian, isActive);
            },
            title: Text(
              'Vegetarian',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include Vegetarian meals.',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            onChanged: (isActive) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isActive);
            },
            title: Text(
              'Vegan',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include Vegan meals.',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}
