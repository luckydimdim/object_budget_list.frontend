import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'dart:html';

@Component(
    selector: 'object-budget-list',
    templateUrl: 'object_budget_list_component.html',
    directives: const [RouterLink])
class ObjectBudgetListComponent implements OnInit, OnDestroy {
  static const String route_name = "ObjectBudgetList";
  static const String route_path = "objectBudgetList";
  static const Route route = const Route(
      path: ObjectBudgetListComponent.route_path,
      component: ObjectBudgetListComponent,
      name: ObjectBudgetListComponent.route_name);

  ObjectBudgetListComponent();

  void breadcrumbInit() {
    var breadcrumbContent = querySelector('#breadcrumbContent') as HtmlElement;

    if (breadcrumbContent == null) return;

    breadcrumbContent.innerHtml = '''
            <li class="breadcrumb-item"><a href="#/master/dashboard">Главная</a></li>
            <li class="breadcrumb-item active">Список бюджетов по объектам строительства</li>
    ''';
  }

  @override
  void ngOnInit() {
    breadcrumbInit();
  }

  @override
  void ngOnDestroy() {}
}
