<div class="container">
	
	<div class="row">
		
		<div class="span4">
			<h4>Applications</h4>
			<br/>
			<table class="table table-bordered table-condensed table-striped">
<? foreach ($apps as $app): ?>
				<tr>
					<td><a href="/app/<?=$app['appkey']?>"><?=$app['name']?></a></td>
				</tr>
<? endforeach; ?>
			</table>
		</div>
		
		<div class="span4">
			<h4>Users</h4>
			<br/>
			<table class="table table-bordered table-condensed table-striped">
<? foreach ($users as $user): ?>
				<tr>
					<td><a href="/user/<?=$user['_id']?>"><?=$user['email']?></a></td>
				</tr>
<? endforeach; ?>
			</table>
		</div>
		
		<div class="span4">
			<h4>Add New User</h4>
			<br/>
			<form action="/admin" method="post">
				<input type="hidden" name="action" value="create-user"/>
				<input type="text" name="email" value="" placeholder="Email Address" autocomplete="no"/>
				<input type="password" name="password" value="" placeholder="Password" autocomplete="no"/>
				<br/>
				<input type="submit" value="Create" class="btn btn-primary"/>
			</form>
		</div>
	
	</div>
	
</div>