.class public Lbl/yt$b;
.super Ljava/lang/Object;
.source "yt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/yt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lbl/yt;


# direct methods
.method public constructor <init>(Lbl/yt;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lbl/yt$b;->this$0:Lbl/yt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lbl/yt$b;->this$0:Lbl/yt;

    iget-object v0, v0, Lbl/yt;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 208
    const/16 v1, 0x27e2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    :try_start_f
    iget-object v1, p0, Lbl/yt$b;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->h:Lbl/yj;
    invoke-static {v1}, Lbl/yt;->access$300(Lbl/yt;)Lbl/yj;

    move-result-object v1

    iget-object v2, p0, Lbl/yt$b;->this$0:Lbl/yt;

    # getter for: Lbl/yt;->c:Landroid/content/Context;
    invoke-static {v2}, Lbl/yt;->access$100(Lbl/yt;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbl/yt$b;->this$0:Lbl/yt;

    iget-object v3, v3, Lbl/yt;->b:Lbl/yh;

    iget-object v3, v3, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v3, v3, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-interface {v1, v2, v3}, Lbl/yj;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/VideoViewParams;)V

    .line 211
    const/16 v1, 0x27e3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2b
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_f .. :try_end_2b} :catch_2c

    .line 215
    :goto_2b
    return-void

    .line 212
    :catch_2c
    move-exception v1

    .line 213
    const/16 v1, 0x27e4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2b
.end method
