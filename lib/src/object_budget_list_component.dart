import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:alert/alert_service.dart';
import 'package:js/js.dart';

@Component(selector: 'object-budget-list')
@View(
    templateUrl: 'object_budget_list_component.html', directives: const [RouterLink])
class ObjectBudgetListComponent implements OnInit, OnDestroy {
  static const String route_name = "ObjectBudgetList";
  static const String route_path = "objectBudgetList";
  static const Route route = const Route(
      path: ObjectBudgetListComponent.route_path,
      component: ObjectBudgetListComponent,
      name: ObjectBudgetListComponent.route_name);

  final Router _router;
  final AlertService _alertService;

  ObjectBudgetListComponent(this._router, this._alertService) {}


  @override
  void ngOnInit() {
  }

  @override
  void ngOnDestroy() {
  }
}
