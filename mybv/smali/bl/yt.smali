.class public final Lbl/yt;
.super Ljava/lang/Object;
.source "yt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/yt$b;,
        Lbl/yt$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lbl/yh;

.field private c:Landroid/content/Context;

.field private volatile d:Z

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lbl/zi;

.field private h:Lbl/yj;

.field private i:Lbl/ze;

.field private j:Lbl/yu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbl/yt;->d:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    .line 123
    const/16 v0, 0x2774

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    .line 125
    iget-object v1, p0, Lbl/yt;->i:Lbl/ze;

    if-nez v1, :cond_15

    .line 126
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "MediaResource resoler is null"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_15
    :try_start_15
    iget-object v1, p0, Lbl/yt;->i:Lbl/ze;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v0, v2}, Lbl/ze;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;I)Lcom/bilibili/lib/media/resource/MediaResource;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/bilibili/lib/media/resource/MediaResource;->c()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 131
    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    iput-object v1, v0, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->mMediaResource:Lcom/bilibili/lib/media/resource/MediaResource;

    .line 132
    const/16 v0, 0x2775

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void

    .line 135
    :cond_2e
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "empty MediaResource"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_36
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_15 .. :try_end_36} :catch_36

    .line 136
    :catch_36
    move-exception v0

    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 138
    const/16 v2, 0x2776

    iput v2, v1, Landroid/os/Message;->what:I

    .line 139
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    throw v0
.end method

.method static synthetic access$100(Lbl/yt;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbl/yt;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lbl/yt;)Lbl/yu;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbl/yt;->j:Lbl/yu;

    return-object v0
.end method

.method static synthetic access$300(Lbl/yt;)Lbl/yj;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbl/yt;->h:Lbl/yj;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lbl/yt;->d:Z

    .line 38
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    :cond_f
    :goto_f
    return-void

    .line 41
    :cond_10
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    goto :goto_f
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 146
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v0, v0, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v1

    .line 147
    iget v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    if-lez v0, :cond_18

    .line 148
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget v1, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mProgress:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    iput-wide v2, v0, Lbl/yh;->d:J

    .line 161
    :cond_17
    :goto_17
    return-void

    .line 152
    :cond_18
    new-instance v2, Lbl/zu;

    invoke-direct {v2, p1}, Lbl/zu;-><init>(Landroid/content/Context;)V

    .line 153
    iget-object v0, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mSeasonId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_45

    .line 154
    new-instance v0, Lbl/zt;

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mEpisodeId:J

    invoke-static {v4, v5}, Lbl/zu;->getEp(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    .line 158
    :goto_38
    invoke-virtual {v2, v0}, Lbl/zu;->b(Lbl/zt;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 159
    iget-object v1, p0, Lbl/yt;->b:Lbl/yh;

    iget-wide v2, v0, Lbl/zt;->b:J

    iput-wide v2, v1, Lbl/yh;->d:J

    goto :goto_17

    .line 156
    :cond_45
    new-instance v0, Lbl/zt;

    iget-wide v4, v1, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->mCid:J

    invoke-static {v4, v5}, Lbl/zu;->getCid(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbl/zt;-><init>(Ljava/lang/String;)V

    goto :goto_38
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;Lbl/yh;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-nez p2, :cond_6

    .line 120
    :goto_5
    return-void

    .line 57
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lbl/yt;->c:Landroid/content/Context;

    .line 58
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lbl/yt;->a:Ljava/lang/ref/WeakReference;

    .line 59
    iput-object p3, p0, Lbl/yt;->b:Lbl/yh;

    .line 60
    const/16 v2, 0x2711

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    const/16 v2, 0x271b

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    iget-object v2, p0, Lbl/yt;->g:Lbl/zi;

    iget-object v3, p0, Lbl/yt;->c:Landroid/content/Context;

    iget-object v4, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v4, v4, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    invoke-virtual {v2, v3, v4, v5}, Lbl/zi;->a(Landroid/content/Context;Lcom/bilibili/tv/player/basic/context/PlayerParams;Lbl/zi$a;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 63
    const/16 v2, 0x271d

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    :goto_32
    :try_start_32
    iget-object v2, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v2, v2, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    iget-object v2, v2, Lcom/bilibili/tv/player/basic/context/PlayerParams;->mVideoParams:Lcom/bilibili/tv/player/basic/context/VideoViewParams;

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/VideoViewParams;->obtainResolveParams()Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bilibili/tv/player/basic/context/ResolveResourceParams;->isNecessaryParamsCompletly()Z

    move-result v2

    if-nez v2, :cond_116

    .line 69
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lbl/yt$b;

    invoke-direct {v3, p0}, Lbl/yt$b;-><init>(Lbl/yt;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 70
    iget-object v3, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    invoke-static {v2}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 75
    :goto_56
    const/16 v2, 0x283c

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    new-instance v3, Lbl/yt$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lbl/yt$a;-><init>(Lbl/yt;Lbl/yt$1;)V

    .line 77
    new-instance v2, Ljava/util/concurrent/FutureTask;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v2, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    .line 78
    iget-object v2, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 79
    iget-object v2, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-direct {p0, v2, p2}, Lbl/yt;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 80
    invoke-virtual {p0}, Lbl/yt;->b()V

    .line 81
    iget-object v2, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lbl/yt;->a(Landroid/content/Context;)V

    .line 82
    iget-object v2, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v2, v2, Lbl/yh;->b:Z

    if-eqz v2, :cond_11d

    .line 83
    iget-object v1, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-static {v1}, Lbl/bll;->d(Landroid/content/Context;)Z

    move-result v1

    .line 84
    iget-object v2, p0, Lbl/yt;->c:Landroid/content/Context;

    invoke-static {v2}, Lbl/bll;->c(Landroid/content/Context;)Z

    move-result v2

    .line 85
    if-nez v1, :cond_99

    if-eqz v2, :cond_99

    .line 86
    iget-object v1, p0, Lbl/yt;->b:Lbl/yh;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lbl/yh;->c:Z

    .line 89
    :cond_99
    iget-object v1, p0, Lbl/yt;->b:Lbl/yh;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lbl/yh;->c:Z

    move v2, v0

    .line 94
    :goto_9f
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->c:Z

    if-eqz v0, :cond_11f

    .line 95
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 103
    :goto_ad
    invoke-virtual {p0}, Lbl/yt;->b()V

    .line 104
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_ea

    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-object v0, v0, Lbl/yh;->a:Lcom/bilibili/tv/player/basic/context/PlayerParams;

    invoke-virtual {v0}, Lcom/bilibili/tv/player/basic/context/PlayerParams;->isLive()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 105
    const-string v0, "PlayerContextResolver"

    const-string v1, "retry loading danmaku"

    invoke-static {v0, v1}, Ltv/danmaku/android/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iput-boolean v2, v0, Lbl/yh;->c:Z

    .line 107
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 108
    new-instance v0, Ljava/util/concurrent/FutureTask;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    .line 109
    iget-object v0, p0, Lbl/yt;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lbl/blw;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 112
    :cond_ea
    const/16 v0, 0x27dc

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    const/16 v0, 0x27d9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    const/16 v0, 0x283d

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f9
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_32 .. :try_end_f9} :catch_fb

    goto/16 :goto_5

    .line 115
    :catch_fb
    move-exception v0

    .line 116
    invoke-virtual {v0}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/danmaku/android/log/BLog;->e(Ljava/lang/String;)V

    .line 117
    const/16 v0, 0x27da

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    const/16 v0, 0x283e

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 65
    :cond_10f
    const/16 v2, 0x271e

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_32

    .line 73
    :cond_116
    const/16 v2, 0x27e3

    :try_start_118
    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11b
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_118 .. :try_end_11b} :catch_fb

    goto/16 :goto_56

    :cond_11d
    move v2, v1

    .line 92
    goto :goto_9f

    .line 98
    :cond_11f
    :try_start_11f
    iget-object v4, p0, Lbl/yt;->f:Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lbl/yt;->b:Lbl/yh;

    iget-boolean v0, v0, Lbl/yh;->b:Z

    if-eqz v0, :cond_131

    const-wide/16 v0, 0xbb8

    :goto_129
    invoke-static {v4, v0, v1}, Lbl/blw;->a(Ljava/util/concurrent/Future;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_12f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11f .. :try_end_12f} :catch_134
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_11f .. :try_end_12f} :catch_fb

    goto/16 :goto_ad

    :cond_131
    const-wide/16 v0, 0x1388

    goto :goto_129

    .line 99
    :catch_134
    move-exception v0

    .line 100
    const/4 v0, 0x0

    :try_start_136
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_139
    .catch Lcom/bilibili/lib/media/resolver/exception/ResolveException; {:try_start_136 .. :try_end_139} :catch_fb

    move-result-object v0

    goto/16 :goto_ad
.end method

.method public a(Lbl/yj;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lbl/yt;->h:Lbl/yj;

    .line 224
    return-void
.end method

.method public a(Lbl/yu;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lbl/yt;->j:Lbl/yu;

    .line 232
    return-void
.end method

.method public a(Lbl/ze;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lbl/yt;->i:Lbl/ze;

    .line 228
    return-void
.end method

.method public a(Lbl/zi;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lbl/yt;->g:Lbl/zi;

    .line 220
    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bilibili/lib/media/resolver/exception/ResolveException;
        }
    .end annotation

    .prologue
    .line 46
    iget-boolean v0, p0, Lbl/yt;->d:Z

    if-eqz v0, :cond_c

    .line 47
    new-instance v0, Lcom/bilibili/lib/media/resolver/exception/ResolveException;

    const-string v1, "cancelled"

    invoke-direct {v0, v1}, Lcom/bilibili/lib/media/resolver/exception/ResolveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_c
    return-void
.end method
