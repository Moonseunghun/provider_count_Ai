# providercount

A new practice repo

## Getting Started
Provider에는 watch, read, select 기능을 제공하고 있습니다.

read: 해당 위젯은 상태값을 읽습니다. 하지만 변경을 감시하지 않습니다.
watch: 해당 위젯이 상태값의 변경을 감시합니다.
select: 해당 위젯은 상태값의 특정 부분만을 감시합니다.

보통 Provider의 값을 변경하기 위한 함수는 read를 통해 접근하며, 상태값을 사용할 때에는 watch를 사용합니다.
변경된 상태값을 표시하기 위해 re-build가 발생하는데, 이 re-build는 많은 비용을 사용합니다.
따라서, 다음과 같이 select를 통해 특정 값의 변경만을 감시하여 re-build를 최적화 할 수 있습니다.

Widget build(BuildContext context) {
final name = context.select((Person p) => p.name);
return Text(name);
}

Provider의 context.watch 또는 context.select로 해당 값을 사용하는 위젯들은 값의 변경에 따라 re-build가 발생하고 위젯이 새로운 값과 함께 다시 표시되게 됩니다.
