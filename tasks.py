from invoke import task

@task
def master(c):
    """Roda testes com tag 'teste'."""
    c.run("robot --include teste testes.robot")
    
@task
def ci(c):
    """Roda testes com a tag 'ci'."""
    c.run("robot --include ci testes.robot")